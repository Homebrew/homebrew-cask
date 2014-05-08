class EminWebpquicklook < Cask
  url 'https://raw.github.com/emin/WebPQuickLook/master/WebpQuickLook.tar.gz'
  homepage 'https://github.com/emin/WebPQuickLook'
  version 'latest'
  sha256 :no_check
  qlplugin 'WebpQuickLook.qlgenerator'
end
