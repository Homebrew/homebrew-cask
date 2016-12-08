cask 'quik' do
  version '2.1.0.5334'
  sha256 '960d14f1022ed13390a3f20ad9761317d82760cdb1c5a78e2e29e90ef2f75232'

  url "https://software.gopro.com/Mac/Quik-MacInstaller-#{version}.dmg"
  name 'GoPro Quik'
  homepage 'https://shop.gopro.com/softwareandapp/quik-%7C-desktop/Quik-Desktop.html'

  pkg 'Quik.pkg'

  uninstall pkgutil: 'com.GoPro.pkg.GoProApp'
end
