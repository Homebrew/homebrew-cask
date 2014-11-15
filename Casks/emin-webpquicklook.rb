cask :v1 => 'emin-webpquicklook' do
  version :latest
  sha256 :no_check

  url 'https://raw.github.com/emin/WebPQuickLook/master/WebpQuickLook.tar.gz'
  homepage 'https://github.com/emin/WebPQuickLook'
  license :oss

  qlplugin 'WebpQuickLook.qlgenerator'
end
