cask 'qqlive' do
  version '2.7.2.46149'
  sha256 '6472949d51eb1ae6781883771f1d139ef248a48883b89e54f2709431db73a997'

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
