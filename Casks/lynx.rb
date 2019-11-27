cask 'lynx' do
  version '6.6.0.0'
  sha256 '48e15237c225c72377b58c46cc625175ab36974602080451aabf99dc9f20f854'

  url 'https://download.saharasupport.com/lynx/production/macx/Lynx-install.dmg'
  appcast 'https://downloads.saharasupport.com/lynx/production/macx/version.txt'
  name 'Lynx by Clevertouch'
  homepage 'https://download.saharasupport.com/'

  auto_updates true

  pkg 'Lynx.pkg'

  uninstall pkgutil: 'uk.co.cleverproducts.lynx'
end
