cask 'latexit' do
  version '2.8.0'
  sha256 '74258cbf8673ef17fb6ce8fbfdc630ea98002fb2a7012c251429299cf9b68489'

  url "http://www.chachatelier.fr/latexit/downloads/LaTeXiT-#{version.gsub('.', '_')}.dmg"
  appcast 'http://pierre.chachatelier.fr/latexit/downloads/latexit-sparkle-en.rss',
          :sha256 => '9bea4215fe332d5d67ce82571fc909face2e8cb391b42a5d45a55cb2cd49be47'
  name 'LaTeXiT'
  homepage 'http://www.chachatelier.fr/latexit'
  license :oss

  app 'LaTeXiT.app'

  zap :delete => '~/Library/Preferences/fr.chachatelier.pierre.LaTeXiT.plist'
end
