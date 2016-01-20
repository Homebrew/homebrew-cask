cask 'liteicon' do
  version '3.6.2'
  sha256 'b9b12c02e69c38f983568a2231d0bd85690839736b1e5595a7d3358c2c7cf304'

  url "https://www.freemacsoft.net/downloads/LiteIcon_#{version}.zip"
  appcast 'https://freemacsoft.net/liteicon/updates.xml',
          checkpoint: 'c330488006bfbb52886583be258e919b6d9865aa55f51658a410f3e38cfba9c5'
  name 'LiteIcon'
  homepage 'https://www.freemacsoft.net/liteicon/'
  license :gratis

  app 'LiteIcon.app'
end
