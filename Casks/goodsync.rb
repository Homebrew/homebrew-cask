cask 'goodsync' do
  version '10.9.22.2'
  sha256 '0df1f59d0bc04c19fcac5ed38f5dcae98f85798069c332433f015e7df9395daf'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://rink.hockeyapp.net/api/2/apps/8b491acdaa8942108b5d8b019be7fcef'
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
