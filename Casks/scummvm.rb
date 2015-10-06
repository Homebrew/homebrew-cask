cask :v1 => 'scummvm' do
  version '1.7.0'
  sha256 'c382c231680011e7def2349baa666e142570ac833d9f4a1ca56e8f1efc5156c5'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/scummvm/scummvm/#{version}/scummvm-#{version}-macosx.dmg"
  appcast 'http://www.scummvm.org/appcasts/macosx/release.xml',
          :sha256 => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
  name 'ScummVM'
  homepage 'http://scummvm.org/'
  license :gpl

  app 'ScummVM.app'
end
