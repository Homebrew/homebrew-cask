cask 'qqlive' do
  version '1.2.1.30329'
  sha256 '0cbca896dabcfded24e3f177b388895c0023d2673a35577030a924300ce8b0b7'

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
