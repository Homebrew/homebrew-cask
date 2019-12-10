cask 'neteasemusic' do
  version '2.3.1_828,644549937.3284.2019119122743'
  sha256 '3ee3bf4c8ace3649995435b5999f8cc3d4f8e457b108dc51dfd3d7aabefc9258'

  # d1.music.126.net was verified as official when first introduced to the cask
  url "https://d1.music.126.net/dmusic/obj/w5zCg8OCw6fCn2vDicOl/#{version.after_comma.major}/#{version.after_comma.minor}/#{version.after_comma.patch}/NeteaseMusic_#{version.before_comma}_web.dmg",
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
