cask :v1 => 'scummvm' do
  version '1.7.0'
  sha256 'c382c231680011e7def2349baa666e142570ac833d9f4a1ca56e8f1efc5156c5'

  url "https://downloads.sourceforge.net/project/scummvm/scummvm/#{version}/scummvm-#{version}-macosx.dmg"
  appcast 'http://www.scummvm.org/appcasts/macosx/release.xml',
          :sha256 => 'bea2fd9739e102c781753c991b6ee6481a1c0c3f00621e96dca06a2b83e42135'
  homepage 'http://scummvm.org/'
  license :oss

  app 'ScummVM.app'
end
