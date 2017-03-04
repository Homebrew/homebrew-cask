cask 'picat' do
  version '2.0'
  sha256 '6a9e4486c9400142bcccc74be8b05daecbce1c84225b7fd0b0a38b0c401597a2'

  url "http://picat-lang.org/download/picat#{version.no_dots}_macx.tar.gz"
  appcast 'http://picat-lang.org/updates.txt',
          checkpoint: 'a0f6418e3f0f5b9a5687f2fd707efbca85581100901fca610c93a16be6236b14'
  name 'Picat'
  homepage 'http://www.picat-lang.org/'

  binary 'Picat/picat'
end
