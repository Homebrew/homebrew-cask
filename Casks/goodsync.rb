cask 'goodsync' do
  version '10.9.23.3'
  sha256 'f08a6e28fb9830ba235c01ea14699c29e7bfe78ac506e3aaa61e8b49ed476192'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://rink.hockeyapp.net/api/2/apps/8b491acdaa8942108b5d8b019be7fcef'
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
