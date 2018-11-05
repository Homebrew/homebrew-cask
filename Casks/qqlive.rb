cask 'qqlive' do
  version '1.10.0.38824'
  sha256 '17dd4184e40fb1409699fa10029d4d776ecf0b62b14bdd6c0faca357df417df5'

  url "https://dldir1.qq.com/qqtv/mac/TencentVideo_V#{version}.dmg"
  name 'QQLive'
  name '腾讯视频'
  homepage 'https://v.qq.com/download.html#mac'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'QQLive.app'

  zap trash: [
               '~/Library/Caches/com.tencent.tenvideo',
               '~/Library/Containers/com.tencent.tenvideo',
               '~/Library/Cookies/com.tencent.tenvideo.binarycookies',
               '~/Library/Logs/QQLive',
               '~/Library/Preferences/com.tencent.tenvideo.plist',
               '~/Library/Saved Application State/com.tencent.tenvideo.savedState',
               '~/Library/WebKit/com.tencent.tenvideo',
             ]
end
