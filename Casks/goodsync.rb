cask 'goodsync' do
  version '11.2.7.9'
  sha256 '12f6246358cefc6e56baae9546a7d776667e1ecc7586026b32151a499830b9a7'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/download?os=macos',
          must_contain: version.major_minor_patch
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
