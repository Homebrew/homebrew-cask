cask 'goodsync' do
  version '10.7.5'
  sha256 'c263b364dc8e0974c3e82971d06ec96b24153c9988213ec169a8b8129bce4646'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/download',
          checkpoint: 'cc013b460e9b14be542515a8eadb9889fe0eee1ee41b32e62606e3f9f919625b'
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  app 'GoodSync.app'
end
