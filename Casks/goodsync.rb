cask 'goodsync' do
  version '10.3.0'
  sha256 'd262147c05c4d4968d85ea6fa09f2e78fd4b6a7fc1ab71446b757857efec805f'

  url "https://www.goodsync.com/download/goodsync-#{version.major}-mac.dmg"
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  app 'GoodSync.app'
end
