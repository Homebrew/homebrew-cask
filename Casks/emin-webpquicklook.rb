cask 'emin-webpquicklook' do
  version :latest
  sha256 :no_check

  url 'https://raw.github.com/emin/WebPQuickLook/master/WebpQuickLook.tar.gz'
  name 'WebPQuickLook'
  homepage 'https://github.com/emin/WebPQuickLook'

  qlplugin 'WebpQuickLook.qlgenerator'
end
