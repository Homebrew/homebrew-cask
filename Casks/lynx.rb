cask 'lynx' do
  version '6.6.1.0'
  sha256 '87645760e658b6fd124c8ae9fd29e0796d53710528ebab49bb854e432c4e208b'

  url 'https://download.saharasupport.com/lynx/production/macx/Lynx-install.dmg'
  appcast 'https://downloads.saharasupport.com/lynx/production/macx/version.txt'
  name 'Lynx by Clevertouch'
  homepage 'https://download.saharasupport.com/'

  auto_updates true

  pkg 'Lynx.pkg'

  uninstall pkgutil: 'uk.co.cleverproducts.lynx'
end
