class Callnote < Cask
  url 'http://callnote.kandasoft.com/callnote-premium-install-2.3.7.pkg'
  homepage 'http://www.kandasoft.com/home/kanda-apps/skype-call-recorder.html'
  version '2.3.7'
  sha1 '6d60790bf7247081c51eabcc25723c9f56955e51'
  install 'callnote-premium-install-2.3.7.pkg'
  uninstall :pkgutil => 'callnote-pro'
end
