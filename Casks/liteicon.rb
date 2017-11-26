cask 'liteicon' do
  version '3.8.2'
  sha256 'ede528b762f4f979b488973db002442260c6eda36d4875655887956e62576e62'

  url "https://www.freemacsoft.net/downloads/LiteIcon_#{version}.zip"
  appcast 'https://freemacsoft.net/liteicon/updates.xml',
          checkpoint: '65a5e1eb06fe9c12c5bf1e0f37e0e68ededa6318e72eecbc8c32a348c7bb4f6f'
  name 'LiteIcon'
  homepage 'https://freemacsoft.net/liteicon/'

  app 'LiteIcon.app'

  zap trash: '~/Library/Preferences/net.freemacsoft.LiteIcon.plist'
end
