cask 'lynx' do
  version '6.5.3.0'
  sha256 '6e9dfa1718d780dbeb022bb0f0ae3f7394099261f353896f6aa2c228604ec1bd'

  url 'https://download.saharasupport.com/lynx/production/macx/Lynx-install.dmg'
  appcast 'https://downloads.saharasupport.com/lynx/production/macx/version.txt'
  name 'Lynx by Clevertouch'
  homepage 'https://download.saharasupport.com/'

  auto_updates true

  pkg 'Lynx.pkg'

  uninstall pkgutil: 'uk.co.cleverproducts.lynx'
end
