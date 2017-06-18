cask 'qqlive' do
  version '1.0.4.30128'
  sha256 '8742b11967be5c2177f2bc2de72f628b0df092d81a0815ba5c2f2a899ddde0b0'

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
