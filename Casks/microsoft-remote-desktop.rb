cask 'microsoft-remote-desktop' do
  version '10.1.7'
  sha256 'bb90305fa3bf0bc3d8e10a4ef61fe57e8e5d5cfd6bbe8774dd9e1e0ebbe1672e'

  # officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/OfficeMac/ was verified as official when first introduced to the cask
  url "https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/OfficeMac/Microsoft_Remote_Desktop_#{version}_installer.pkg"
  name 'Microsoft Remote Desktop'
  homepage ''

  pkg "Microsoft_Remote_Desktop_#{version}_installer.pkg"

  uninstall pkgutil: [
                       'com.microsoft.autoupdate2',
                       'com.microsoft.rdc.macos',
                     ]
end
