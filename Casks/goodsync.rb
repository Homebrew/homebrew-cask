cask 'goodsync' do
  version '10.9.32.2'
  sha256 '6312c1b4c37a377f119d9d9971336720e15ecdeba1e01d832f365d01efc6d332'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/news-mac'
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
