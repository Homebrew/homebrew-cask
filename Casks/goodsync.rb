cask 'goodsync' do
  version '10.10.18.8'
  sha256 '047bc9cf91609a27fe60e867cabc4d2215c1949b9622644e56dcfcdbd8f6a747'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/download?os=macos',
          configuration: version.major_minor_patch
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
