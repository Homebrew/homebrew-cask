cask 'fl-studio' do
  version '20.0.99.123'
  sha256 '53166826d25940684e0dc66d8217cfa38820f760ea180b3778a73571c6517d30'

  url "https://support.image-line.com/redirect/flstudio#{version.major}_mac_installer"
  name 'FL Studio 20'
  homepage 'https://www.image-line.com/flstudio/'

  pkg 'Install FL Studio.pkg'

  uninstall pkgutil: 'com.Image-Line.pkg.FLStudio64'
end
