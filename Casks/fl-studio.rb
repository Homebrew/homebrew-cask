cask 'fl-studio' do
  version '20.0.2.25'
  sha256 '33d223394e361c7304b515871d9bf42327f1ba83397fff22d6175046f2383648'

  url "http://demodownload.image-line.com/flstudio/flstudio_mac_#{version}.dmg"
  name 'FL Studio'
  homepage 'https://www.image-line.com/flstudio/'

  pkg 'Install FL Studio.pkg'

  uninstall pkgutil: 'com.Image-Line.pkg.FLStudio64'
end
