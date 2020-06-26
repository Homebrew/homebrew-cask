cask 'goodsync' do
  version '11.2.4.4'
  sha256 '785cd8d5b584449f5693a203e3f7f4f04c975f9e7f99897a55d5e382b8102f8e'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/download?os=macos',
          must_contain: version.major_minor_patch
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
