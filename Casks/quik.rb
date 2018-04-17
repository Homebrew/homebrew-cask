cask 'quik' do
  version '2.6.0.666'
  sha256 'a3684e81f0d4e023dbbf6bad2d2bcf40839be495d297bc6dc0942cbe51ec07b8'

  url "https://software.gopro.com/Mac/GoPro_Quik-MacInstaller-#{version}.dmg"
  name 'GoPro Quik'
  homepage 'https://shop.gopro.com/softwareandapp/quik-%7C-desktop/Quik-Desktop.html'

  pkg 'GoPro Quik.pkg'

  uninstall pkgutil: 'com.GoPro.pkg.GoProApp'
end
