cask 'lynx' do
  version '6.5.9.0'
  sha256 '1d724bbcf0d5940d88851057c3d6156bb9b4968c731d0cc96192190d72f5952f'

  url 'https://download.saharasupport.com/lynx/production/macx/Lynx-install.dmg'
  appcast 'https://downloads.saharasupport.com/lynx/production/macx/version.txt'
  name 'Lynx by Clevertouch'
  homepage 'https://download.saharasupport.com/'

  auto_updates true

  pkg 'Lynx.pkg'

  uninstall pkgutil: 'uk.co.cleverproducts.lynx'
end
