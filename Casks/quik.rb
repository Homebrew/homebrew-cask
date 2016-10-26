cask 'quik' do
  version '2.0.1.5076'
  sha256 '5226e6e86a96eeeda88938763a1858e8e1fe29a1f6024ed280a6f5d912f1611d'

  url "https://software.gopro.com/Mac/Quik-MacInstaller-#{version}.dmg"
  name 'GoPro Quik'
  homepage 'https://shop.gopro.com/softwareandapp/quik-%7C-desktop/Quik-Desktop.html'

  conflicts_with cask: 'gopro-studio'

  pkg 'Quik.pkg'

  uninstall pkgutil: 'com.GoPro.pkg.GoProApp'
end
