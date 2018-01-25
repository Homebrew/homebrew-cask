cask 'goodsync' do
  version '10.6.7'
  sha256 '3f01a7b2b9a634bd4dc32865f9e87dda25022995e7b93845f3bb7cee7687b73d'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/download',
          checkpoint: '10e2a1018eb36ce767f8a02322400c58e15d06b65e139f92e205b518846e7ffa'
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  app 'GoodSync.app'
end
