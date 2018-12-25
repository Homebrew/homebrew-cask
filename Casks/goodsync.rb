cask 'goodsync' do
  version '10.9.19'
  sha256 'fcd8d8facf62c4b9ffe11b0cdfae2ce4669f9641394f295f096de843e6232bbe'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://rink.hockeyapp.net/api/2/apps/8b491acdaa8942108b5d8b019be7fcef'
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
