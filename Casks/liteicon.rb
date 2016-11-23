cask 'liteicon' do
  version '3.7.1'
  sha256 'b457521a698a0ef55cd3d9c044c82c28984eeebc20d8baf05a9c21b0fa1df432'

  url "https://www.freemacsoft.net/downloads/LiteIcon_#{version}.zip"
  appcast 'https://freemacsoft.net/liteicon/updates.xml',
          checkpoint: 'd011430ae0b99504d66d4367803f4fd008a54c1c03f8ffc69407867eda22925b'
  name 'LiteIcon'
  homepage 'https://freemacsoft.net/liteicon/'

  app 'LiteIcon.app'

  zap delete: '~/Library/Preferences/net.freemacsoft.LiteIcon.plist'
end
