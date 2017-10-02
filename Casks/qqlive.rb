cask 'qqlive' do
  version '1.1.1.30284'
  sha256 '77e5e6af1b78cb5a36439872540175e942e86f1d8c0169f01255bc6215fe2c3c'

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
