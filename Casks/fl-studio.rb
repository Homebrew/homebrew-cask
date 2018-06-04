cask 'fl-studio' do
  version '20.0.2.24'
  sha256 '2c57ac3b9470e73d353180f1259018c2bfeef815fdc1e9d9c5db001ebf293e84'

  url "http://demodownload.image-line.com/flstudio/flstudio_mac_#{version}.dmg"
  name 'FL Studio'
  homepage 'https://www.image-line.com/flstudio/'

  pkg 'Install FL Studio.pkg'

  uninstall pkgutil: 'com.Image-Line.pkg.FLStudio64'
end
