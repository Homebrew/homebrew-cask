cask 'qqlive' do
  version '1.0.8.30228'
  sha256 'c10b8bfa9285f5ff33486f7f1fdbb97a4cfb539c6c55acc9c55076d3af1898b9'

  url "https://dldir1.qq.com/qqtv/mac/TencentVideo_V#{version}.dmg"
  name 'QQLive'
  name '腾讯视频'
  homepage 'https://v.qq.com/download.html#mac'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'QQLive.app'

  zap delete: [
                '~/Library/Caches/com.tencent.tenvideo',
                '~/Library/Containers/com.tencent.tenvideo',
                '~/Library/Cookies/com.tencent.tenvideo.binarycookies',
                '~/Library/Logs/QQLive',
                '~/Library/Preferences/com.tencent.tenvideo.plist',
                '~/Library/Saved Application State/com.tencent.tenvideo.savedState',
                '~/Library/WebKit/com.tencent.tenvideo',
              ]
end
