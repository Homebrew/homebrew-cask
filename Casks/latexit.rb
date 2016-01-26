cask 'latexit' do
  version '2.8.0'
  sha256 '74258cbf8673ef17fb6ce8fbfdc630ea98002fb2a7012c251429299cf9b68489'

  url "http://www.chachatelier.fr/latexit/downloads/LaTeXiT-#{version.gsub('.', '_')}.dmg"
  appcast 'http://pierre.chachatelier.fr/latexit/downloads/latexit-sparkle-en.rss',
          checkpoint: 'b2acb7c6fa3a029c8711308da5b2bc6835fb878cfa1ec374159c4d7e2e69f3f2'
  name 'LaTeXiT'
  homepage 'http://www.chachatelier.fr/latexit'
  license :oss

  app 'LaTeXiT.app'

  zap delete: '~/Library/Preferences/fr.chachatelier.pierre.LaTeXiT.plist'
end
