cask 'goodsync' do
  version '10.3.3'
  sha256 '655c34e60cd90ccda4a53920127ca1b31a9fc6770720275574f00e6a66b326b5'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  app 'GoodSync.app'
end
