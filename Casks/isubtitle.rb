cask 'isubtitle' do
  version '3.1'
  sha256 '043c492b3baf53ccde1016272c2a065eb404c305c28e51caf9f0cee55f382ea8'

  url "http://www.bitfield.se/isubtitle#{version.major}/download/iSubtitle_#{version}.zip"
  appcast "http://www.bitfield.se/isubtitle#{version.major}/changelog.xml",
          checkpoint: '3f62caa56691c22d13c56b137cea646dcb7dac2131f5a27ea8ff0b1a32354357'
  name 'iSubtitle'
  homepage 'https://www.bitfield.se/isubtitle/'

  app 'iSubtitle.app'
end
