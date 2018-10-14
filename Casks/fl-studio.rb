cask 'fl-studio' do
  version '20.0.5.91'
  sha256 '53166826d25940684e0dc66d8217cfa38820f760ea180b3778a73571c6517d30'

  url "http://demodownload.image-line.com/flstudio/flstudio_mac_#{version}.dmg"
  name 'FL Studio'
  homepage 'https://www.image-line.com/flstudio/'

  pkg 'Install FL Studio.pkg'

  uninstall pkgutil: 'com.Image-Line.pkg.FLStudio64'
end
