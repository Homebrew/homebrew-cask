cask 'quik' do
  version '2.5.0.259'
  sha256 'e8cae389f096000c448ef95dad23a3b46465e6a5b11b4d2d4d0673e645449c6a'

  url "https://software.gopro.com/Mac/GoPro_Quik-MacInstaller-#{version}.dmg"
  name 'GoPro Quik'
  homepage 'https://shop.gopro.com/softwareandapp/quik-%7C-desktop/Quik-Desktop.html'

  pkg 'GoPro Quik.pkg'

  uninstall pkgutil: 'com.GoPro.pkg.GoProApp'
end
