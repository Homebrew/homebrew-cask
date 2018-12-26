cask 'goodsync' do
  version '10.9.20.0'
  sha256 '71971679fdb9caaf5f17dffa1b477b52ab165828c7fba549cb27834869ed7537'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://rink.hockeyapp.net/api/2/apps/8b491acdaa8942108b5d8b019be7fcef'
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
