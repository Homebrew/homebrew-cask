cask 'goodsync' do
  version '10.5.2'
  sha256 'ee94b9715c6f7b8785f8c24c0da8f08426c1824b27eb6a140fb81c771414d050'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/download',
          checkpoint: '7a1dbc58e629aba3f17544a7adeac0db1546fe3cf276b9a041cea10fb6a3b770'
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  app 'GoodSync.app'
end
