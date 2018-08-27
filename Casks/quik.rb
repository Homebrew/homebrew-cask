cask 'quik' do
  version '2.6.1.713'
  sha256 'a85c1b1f953f4a9ce6ebcc6053d6762e854bd2c3a8cfd09ac409fa1734cc0e83'

  url "https://software.gopro.com/Mac/GoPro_Quik-MacInstaller-#{version}.dmg"
  name 'GoPro Quik'
  homepage 'https://shop.gopro.com/softwareandapp/quik-%7C-desktop/Quik-Desktop.html'

  pkg 'GoPro Quik.pkg'

  uninstall pkgutil: 'com.GoPro.pkg.GoProApp'
end
