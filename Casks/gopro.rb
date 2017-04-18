cask 'gopro' do
  version '1.0.0.2474'
  sha256 '146d239ada6d4503bd9e1dc9d62c4750e18c1dd6bf650f4ee9c40dd9128e5cd4'

  url "https://software.gopro.com/Mac/GoPro-MacInstaller-#{version}.dmg"
  name 'GoPro Desktop'
  homepage 'http://shop.gopro.com/softwareandapp/gopro-app-%7C-desktop/GoPro-Desktop-App.html'
  license :commercial

  conflicts_with cask: 'gopro-studio'

  pkg 'GoPro.pkg'

  uninstall pkgutil: 'com.GoPro.pkg.GoProApp'
end
