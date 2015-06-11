cask :v1 => 'liteicon' do
  version '3.5.6'
  sha256 'b1bcfa3f1fb41bb810a00dbfe8a1177c001492930c56b5e10a28f901b65740fd'

  url "http://www.freemacsoft.net/downloads/LiteIcon_#{version}.zip"
  appcast 'http://www.freemacsoft.net/liteicon/updates.xml',
          :sha256 => '3815e06647bbecb0adab6364a2c2808460d1330226744fa01474366ca63eadb1'
  name 'LiteIcon'
  homepage 'http://www.freemacsoft.net/liteicon/'
  license :gratis

  app 'LiteIcon.app'
end
