cask 'goodsync' do
  version '10.7.6'
  sha256 '7158a01d3372c1523f7de984121403db46d3a3fd72f0f6683616fd3ca3f8fad3'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/download',
          checkpoint: '60b27cb160af1459b280f1c7430ad318171b142404df02bca957bb9826291928'
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  app 'GoodSync.app'
end
