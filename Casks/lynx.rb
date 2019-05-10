cask 'lynx' do
  version '6.5.4.0'
  sha256 '90f2869d09fadc344adbec20f92d2a32390079c781878486847e8361f2e1f481'

  url 'https://download.saharasupport.com/lynx/production/macx/Lynx-install.dmg'
  appcast 'https://downloads.saharasupport.com/lynx/production/macx/version.txt'
  name 'Lynx by Clevertouch'
  homepage 'https://download.saharasupport.com/'

  auto_updates true

  pkg 'Lynx.pkg'

  uninstall pkgutil: 'uk.co.cleverproducts.lynx'
end
