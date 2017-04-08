cask 'goodsync' do
  version '10.4.0'
  sha256 'a35d5607b2ce87950f04aadfecd730ccd45b5978a684d00729c5c59c68ac8944'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  app 'GoodSync.app'
end
