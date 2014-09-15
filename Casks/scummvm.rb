class Scummvm < Cask
  version '1.6.0'
  sha256 '9e23c5e4d5b04400202c61d031d85d2ed09a88662c7cec9b56f354d07cc96f28'

  url 'https://downloads.sourceforge.net/project/scummvm/scummvm/1.6.0/scummvm-1.6.0-macosx.dmg'
  appcast 'http://www.scummvm.org/appcasts/macosx/release.xml'
  homepage 'http://scummvm.org/'

  app 'ScummVM.app'
end
