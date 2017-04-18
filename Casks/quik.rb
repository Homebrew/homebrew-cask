cask 'quik' do
  version '2.3.0.6256'
  sha256 '05d42843f01b43b74b7eaebda3296dc5a15ea1fb38040eff30dca89d48f7fede'

  url "https://software.gopro.com/Mac/GoPro_Quik-MacInstaller-#{version}.dmg"
  name 'GoPro Quik'
  homepage 'https://shop.gopro.com/softwareandapp/quik-%7C-desktop/Quik-Desktop.html'

  pkg 'Quik.pkg'

  uninstall pkgutil: 'com.GoPro.pkg.GoProApp'
end
