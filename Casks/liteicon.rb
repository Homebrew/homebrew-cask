cask 'liteicon' do
  version '3.6.2'
  sha256 'b9b12c02e69c38f983568a2231d0bd85690839736b1e5595a7d3358c2c7cf304'

  url "https://www.freemacsoft.net/downloads/LiteIcon_#{version}.zip"
  appcast 'https://freemacsoft.net/liteicon/updates.xml',
          :sha256 => 'fe12f2590c59cce77f16184d907af8ef82aa653d78bd180bc2445ee869b10b45'
  name 'LiteIcon'
  homepage 'https://www.freemacsoft.net/liteicon/'
  license :gratis

  app 'LiteIcon.app'
end
