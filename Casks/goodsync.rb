cask 'goodsync' do
  version :latest
  sha256 :no_check

  url 'https://www.goodsync.com/download/goodsync-mac.dmg'
  name 'GoodSync'
  homepage 'https://www.goodsync.com'
  license :commercial

  app 'GoodSync.app'
end
