cask 'qqlive' do
  version '2.10.1.49345'
  sha256 '654df593283792b34311fda07c20430c636b541bc4ba52e404ebc344065e0960'

  url "https://dldir1.qq.com/qqtv/mac/TencentVideo_V#{version}.dmg"
  appcast 'https://v.qq.com/download.html#mac'
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
