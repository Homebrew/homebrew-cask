cask 'goodsync' do
  version '10.4.5'
  sha256 '71f6e32d3ca57e02af1e7d728ff724576373fbd6d4e63833b52a17745a9dfc9b'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  app 'GoodSync.app'
end
