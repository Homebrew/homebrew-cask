cask 'neteasemusic' do
  version '2.3.1_824'
  sha256 '4860316e46904594ed2ccb96fc451bb4d49ee7de01be7c64069980d50edac989'

  # d1.music.126.net was verified as official when first introduced to the cask
  url "https://d1.music.126.net/dmusic/obj/w5zCg8OCw6fCn2vDicOl/605533604/4f60/201911523186/NeteaseMusic_#{version.before_comma}_web.dmg",
      user_agent: :fake
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
