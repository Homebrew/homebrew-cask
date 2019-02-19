cask 'goodsync' do
  version '10.9.24.4'
  sha256 '26329a8e2cbfb41726c5654174f34b9362ab0c2ea0d69ccda4f1aae33ab4b78b'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://rink.hockeyapp.net/api/2/apps/8b491acdaa8942108b5d8b019be7fcef'
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
