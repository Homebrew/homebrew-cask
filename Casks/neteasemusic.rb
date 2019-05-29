cask 'neteasemusic' do
  version '2.1.0_772,f8f4:201942919165'
  sha256 '8fed19aa9087ed4982640929281117ce4a19443778105cde62df56f62a330c65'

  # d1.music.126.net was verified as official when first introduced to the cask
  url "http://d1.music.126.net/dmusic/#{version.after_comma.before_colon}/#{version.after_colon}/NeteaseMusic_#{version.before_comma}_web.dmg"
  appcast 'https://music.163.com/api/mac/appcast.xml'
  name 'NetEase cloud music'
  name '网易云音乐'
  homepage 'https://music.163.com/'

  depends_on macos: '>= :sierra'

  app 'NeteaseMusic.app'

  uninstall quit: 'com.netease.163music'

  zap trash: [
               '~/Library/Caches/com.netease.163music',
               '~/Library/Containers/com.netease.163music',
               '~/Library/Cookies/com.netease.163music.binarycookies',
               '~/Library/Preferences/com.netease.163music.plist',
               '~/Library/Saved Application State/com.netease.163music.savedState',
             ]
end
