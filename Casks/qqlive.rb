cask 'qqlive' do
  version '1.7.0.37129'
  sha256 '11d3de89f23212bdfec5adac5e99c0f0b0abebab24e01c22d7fcc538207ed63a'

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
