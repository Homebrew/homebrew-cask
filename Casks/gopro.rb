cask 'gopro' do
  version '1.3.0.3078'
  sha256 'b4926626362cbd12f20c782fcba945e2b5670fe175d592fb501dd84b471a4d95'

  url "https://software.gopro.com/Mac/GoPro-MacInstaller-#{version}.dmg"
  name 'GoPro Desktop'
  homepage 'http://shop.gopro.com/softwareandapp/gopro-app-%7C-desktop/GoPro-Desktop-App.html'
  license :commercial

  conflicts_with cask: 'gopro-studio'

  pkg 'GoPro.pkg'

  uninstall pkgutil: 'com.GoPro.pkg.GoProApp'
end
