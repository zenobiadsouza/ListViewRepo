<%@ page language="C#" autoeventwireup="true" inherits="_Default, App_Web_3jofaphw" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ListView ID="ListView1" runat="server" 
            onitemediting="ListView1_ItemEditing" 
            onitemcanceling="ListView1_ItemCanceling" 
            onitemdeleting="ListView1_ItemDeleting" 
            onitemupdating="ListView1_ItemUpdating" InsertItemPosition="LastItem" 
            oniteminserting="ListView1_ItemInserting">
       
        <ItemTemplate>
        <table>
        <tr>
         <th style="background-color:Lime">Product Id</th>
          <th style="background-color:Olive">Product Name</th>
            <th style="background-color:Lime">Price</th>
            <th style="background-color:Gray">Operation</th>
        </tr>
        <tr>
      
        <td style="background-color:Yellow"><asp:Label runat="server" ID="lblid" Text='<%#bind("ProductId") %>'></asp:Label></td>
     
     
      
        <td style="background-color:Gold"><asp:Label runat="server" ID="lblname" Text='<%#bind("ProductName") %>'></asp:Label></td>
       
      
        <td style="background-color:Yellow"><asp:Label runat="server" ID="lblprice" Text='<%#bind("Price") %>'></asp:Label></td>
        
        <td><asp:Button ID="btnEdit" runat="server" Text="Edit" CommandName="Edit"/></td>
        <td><asp:Button runat="server" ID="btnDelete" Text="Delete" CommandName="Delete" /></td>
        </tr>
        </table>
        </ItemTemplate>
        <EditItemTemplate>
        <table>
        <tr>
         <th style="background-color:Lime">Product Id</th>
          <th style="background-color:Olive">Product Name</th>
            <th style="background-color:Lime">Price</th>
            <th style="background-color:Gray">Operation</th>
        </tr>
        <tr>
      
        <td style="background-color:Yellow"><asp:Label runat="server" ID="lblid" Text='<%#bind("ProductId") %>'></asp:Label></td>
     
     
      
        <td style="background-color:Gold"><asp:TextBox runat="server" ID="txtname" Text='<%#bind("ProductName") %>'></asp:TextBox></td>
       
      
        <td style="background-color:Yellow"><asp:TextBox runat="server" ID="txtprice" Text='<%#bind("Price") %>'></asp:TextBox></td>
        
        <td><asp:Button ID="btnUpdate" runat="server" Text="Update" CommandName="Update"/></td>
        <td><asp:Button runat="server" ID="btnCancel" Text="Cancel" CommandName="Cancel" /></td>
        </tr>
        </table>
        </EditItemTemplate>
        <InsertItemTemplate>
        <table>
        <tr>
         <th style="background-color:Lime">Product Id</th>
          <th style="background-color:Olive">Product Name</th>
            <th style="background-color:Lime">Price</th>
            <th style="background-color:Gray">Operation</th>
        </tr>
        <tr>
      
        <td style="background-color:Yellow"><asp:TextBox runat="server" ID="txtid"></asp:TextBox></td>
     
     
      
        <td style="background-color:Gold"><asp:TextBox runat="server" ID="txtname"></asp:TextBox></td>
       
      
        <td style="background-color:Yellow"><asp:TextBox runat="server" ID="txtprice"></asp:TextBox></td>
        
        <td><asp:Button ID="btnInsert" runat="server" Text="Insert" CommandName="Insert"/></td>
        
        </tr>
        </table>
        </InsertItemTemplate>
        </asp:ListView>
    
    </div>
    </form>
</body>
</html>
