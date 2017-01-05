cask 'quik' do
  version '2.1.0.5429'
  sha256 '42b36d79373ffe159a1b5a8ecbef9070673a1527e33daddca95d7b6546008851'

  url "https://software.gopro.com/Mac/Quik-MacInstaller-#{version}.dmg"
  name 'GoPro Quik'
  homepage 'https://shop.gopro.com/softwareandapp/quik-%7C-desktop/Quik-Desktop.html'

  pkg 'Quik.pkg'

  uninstall pkgutil: 'com.GoPro.pkg.GoProApp'
end
