cask 'quik' do
  version '2.5.2.562'
  sha256 '2748bc519348d936811fa2cbf2b4fb58f254f3ff8a4f08a5de99917c086968b7'

  url "https://software.gopro.com/Mac/GoPro_Quik-MacInstaller-#{version}.dmg"
  name 'GoPro Quik'
  homepage 'https://shop.gopro.com/softwareandapp/quik-%7C-desktop/Quik-Desktop.html'

  pkg 'GoPro Quik.pkg'

  uninstall pkgutil: 'com.GoPro.pkg.GoProApp'
end
