cask 'goodsync' do
  version '10.6.1'
  sha256 '06f3ec8b89e8ae966b5325f8f8a651c0e4473a3957615ee328729dc1a9fecd40'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/download',
          checkpoint: '442f3147449d9b1864dca173e7cb03cb64726c2732d307fc519fefd168c26dd5'
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  app 'GoodSync.app'
end
