cask :v1 => 'liteicon' do
  version '3.5.5'
  sha256 'b1e0e984b24993fe5c1138cd9779b9d60cb88f29cc9406940e0f3ee71025e152'

  url "http://www.freemacsoft.net/downloads/LiteIcon_#{version}.zip"
  appcast 'http://www.freemacsoft.net/liteicon/updates.xml',
          :sha256 => '3815e06647bbecb0adab6364a2c2808460d1330226744fa01474366ca63eadb1'
  name 'LiteIcon'
  homepage 'http://www.freemacsoft.net/liteicon/'
  license :gratis

  app 'LiteIcon.app'
end
