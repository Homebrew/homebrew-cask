cask 'sharepointbrowserplugin' do
  version '2016_15.32.17030901'
  sha256 'f7f29202881a319fb249d15ab6125b5a1a94b303c649cbe3fafb37ecd4728ed8'

  # officecdn-microsoft-com.akamaized.net was verified as official when first introduced to the cask
  url "https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/OfficeMac/Microsoft_SharePoint_#{version}_SharePointPlugin.pkg"
  name 'SharePointBrowserPlugin'
  homepage 'https://support.microsoft.com/en-us/help/3183199/microsoft-sharepoint-on-premises-safari-browser-plugin-for-office-2016'

  pkg "Microsoft_SharePoint_#{version}_SharePointPlugin.pkg"

  uninstall pkgutil: 'com.microsoft.office.sharepointplugin'
end
