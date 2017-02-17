cask 'goodsync' do
  version '10.3.2'
  sha256 '7ad18d08b6360368ba9d43d33dba47f49452411ae03a4d2d836bf50ce4aaca48'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  app 'GoodSync.app'
end
