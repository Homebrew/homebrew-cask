class Scummvm < Cask
  version '1.7.0'
  sha256 'c382c231680011e7def2349baa666e142570ac833d9f4a1ca56e8f1efc5156c5'

  url "https://downloads.sourceforge.net/project/scummvm/scummvm/#{version}/scummvm-#{version}-macosx.dmg"
  appcast 'http://www.scummvm.org/appcasts/macosx/release.xml'
  homepage 'http://scummvm.org/'

  app 'ScummVM.app'
end
