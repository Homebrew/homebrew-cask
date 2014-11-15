cask :v1 => 'latexit' do
  version '2.7.3'
  sha256 '45efeeea0d7bde36ba08aa663d6dd10092ec66d7622bccccf73732257e1e82f0'

  url "http://www.chachatelier.fr/latexit/downloads/LaTeXiT-#{version.gsub('.', '_')}.dmg"
  appcast 'http://pierre.chachatelier.fr/latexit/downloads/latexit-sparkle-en.rss',
          :sha256 => 'bc1bd88bf1d7a9770f0527652db2fc082214240a9b66684d9a95a0beaf2f260a'
  homepage 'http://www.chachatelier.fr/latexit'
  license :unknown

  app 'LaTeXiT.app'
  zap :delete => '~/Library/Preferences/fr.chachatelier.pierre.LaTeXiT.plist'
end
