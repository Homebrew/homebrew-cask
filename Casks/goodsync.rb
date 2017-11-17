cask 'goodsync' do
  version '10.6.7'
  sha256 '1100012006296cda4f9b21faf27588416e47ee586aa97870b77df419d7712013'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/download',
          checkpoint: 'f0704987e9bc056d8dd792f6fce24a84d9df285b335a8a2c9d38159741651997'
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  app 'GoodSync.app'
end
