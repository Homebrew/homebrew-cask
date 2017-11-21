cask 'picat' do
  version '2.2'
  sha256 '9d08e44f155982600bb54c8b4890e08baaaa38d20f2919f9346a000c5fcac798'

  url "http://picat-lang.org/download/picat#{version.no_dots}_macx.tar.gz"
  appcast 'http://picat-lang.org/updates.txt',
          checkpoint: '83b1ef8773629f7608539b747f3dfc6317278e83d69988e83d06d258883c5009'
  name 'Picat'
  homepage 'http://www.picat-lang.org/'

  binary 'Picat/picat'
end
