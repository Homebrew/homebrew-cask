cask 'goodsync' do
  version '10.4.7'
  sha256 'c62332e8c3c355cf0dce864fe023cc8a31b3fa22f88f4a9414b5966812d86c1e'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  app 'GoodSync.app'
end
