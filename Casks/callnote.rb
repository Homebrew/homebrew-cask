class Callnote < Cask
  url 'http://callnote.kandasoft.com/callnote-premium-install-2.3.7.pkg'
  homepage 'http://www.kandasoft.com/home/kanda-apps/skype-call-recorder.html'
  version '2.3.7'
  sha256 '968c61f2cd1e71f91ec45b9f69023765210010e3d28256eeb65942ee075e756b'
  install 'callnote-premium-install-2.3.7.pkg'
  uninstall :pkgutil => 'callnote-pro'
end
