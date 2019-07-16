cask 'lynx' do
  version '6.5.5.0'
  sha256 'a12636ca027ddbcc0e13e8b53d6202d7b2596469008b84ee2cda876e01db80e0'

  url 'https://download.saharasupport.com/lynx/production/macx/Lynx-install.dmg'
  appcast 'https://downloads.saharasupport.com/lynx/production/macx/version.txt'
  name 'Lynx by Clevertouch'
  homepage 'https://download.saharasupport.com/'

  auto_updates true

  pkg 'Lynx.pkg'

  uninstall pkgutil: 'uk.co.cleverproducts.lynx'
end
