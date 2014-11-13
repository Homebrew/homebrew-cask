cask :v1 => 'goodsync' do
  version :latest
  sha256 :no_check

  url 'https://www.goodsync.com/download/goodsync-mac.dmg'
  homepage 'http://www.goodsync.com'
  license :commercial

  app 'GoodSync.app'
end
