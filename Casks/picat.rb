cask 'picat' do
  version '2.4.8'
  sha256 'f8f6efc24ec8a39e528679b3ad2ef1e509e4c81fe776488f0b952cb5b7030783'

  url "http://picat-lang.org/download/picat#{version.major_minor.no_dots}_macx.tar.gz"
  appcast 'http://picat-lang.org/updates.txt'
  name 'Picat'
  homepage 'http://www.picat-lang.org/'

  binary 'Picat/picat'
end
