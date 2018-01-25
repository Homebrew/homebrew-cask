cask 'liteicon' do
  if MacOS.version <= :sierra
    version '3.7.1'
    sha256 'b457521a698a0ef55cd3d9c044c82c28984eeebc20d8baf05a9c21b0fa1df432'
  else
    version '3.8.2'
    sha256 'ede528b762f4f979b488973db002442260c6eda36d4875655887956e62576e62'
  end

  url "https://www.freemacsoft.net/downloads/LiteIcon_#{version}.zip"
  appcast 'https://freemacsoft.net/liteicon/updates.xml',
          checkpoint: '65a5e1eb06fe9c12c5bf1e0f37e0e68ededa6318e72eecbc8c32a348c7bb4f6f'
  name 'LiteIcon'
  homepage 'https://freemacsoft.net/liteicon/'

  app 'LiteIcon.app'

  zap trash: '~/Library/Preferences/net.freemacsoft.LiteIcon.plist'
end
