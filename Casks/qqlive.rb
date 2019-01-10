cask 'qqlive' do
  version '2.1.2.41094'
  sha256 '2e603d83686ee554145bafc69fea246dc3e2ba69d31e783887f97e05b0350d37'

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
