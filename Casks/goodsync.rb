cask 'goodsync' do
  version '10.4.6'
  sha256 '22d13a613fb836034aa6271674288868d221e7d49ce70681570c5c05c1b73f0c'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  app 'GoodSync.app'
end
