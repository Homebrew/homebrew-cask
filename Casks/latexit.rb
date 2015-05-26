cask :v1 => 'latexit' do
  version '2.7.5'
  sha256 '2faef9682f1450d2a4b240bcf602a84ae187e58bf62787e2185af0ee05161e6f'

  url "http://www.chachatelier.fr/latexit/downloads/LaTeXiT-#{version.gsub('.', '_')}.dmg"
  appcast 'http://pierre.chachatelier.fr/latexit/downloads/latexit-sparkle-en.rss',
          :sha256 => 'bc1bd88bf1d7a9770f0527652db2fc082214240a9b66684d9a95a0beaf2f260a'
  name 'LaTeXiT'
  homepage 'http://www.chachatelier.fr/latexit'
  license :oss

  app 'LaTeXiT.app'

  zap :delete => '~/Library/Preferences/fr.chachatelier.pierre.LaTeXiT.plist'
end
