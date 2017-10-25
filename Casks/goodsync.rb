cask 'goodsync' do
  version '10.6.4'
  sha256 'e77f41a8281964a2bb1552b8be0bd871f5030ee038aecb8e4e576e10df5a8016'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/download',
          checkpoint: '6f5106e4e44e7bf76e1e4eba9c9bea70140e8fcebef07f9235f41806026ad3ed'
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  app 'GoodSync.app'
end
