cask 'gopro' do
  version '1.4.0.3411'
  sha256 'a7df7d8f0e509a0411fc8a1e9df95da5099523aa9edf283f2c45b65308c7ecf8'

  url "https://software.gopro.com/Mac/GoPro-MacInstaller-#{version}.dmg"
  name 'GoPro Desktop'
  homepage 'https://shop.gopro.com/softwareandapp/gopro-app-%7C-desktop/GoPro-Desktop-App.html'
  license :commercial

  conflicts_with cask: 'gopro-studio'

  pkg 'GoPro.pkg'

  uninstall pkgutil: 'com.GoPro.pkg.GoProApp'
end
