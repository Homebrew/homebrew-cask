cask 'lynx' do
  version '6.6.4.0'
  sha256 '1d98d95108dbca33fc0fd8fd178912df8de1fa207679c30f4fc8fa7b8c1640c3'

  url 'https://download.saharasupport.com/lynx/production/macx/Lynx-install.dmg'
  appcast 'https://downloads.saharasupport.com/lynx/production/macx/version.txt'
  name 'Lynx by Clevertouch'
  homepage 'https://download.saharasupport.com/'

  auto_updates true

  pkg 'Lynx.pkg'

  uninstall pkgutil: 'uk.co.cleverproducts.lynx'
end
