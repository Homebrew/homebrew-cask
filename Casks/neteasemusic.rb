cask 'neteasemusic' do
  version '2.3.0_814,b2a5:20191015153044'
  sha256 '3e90d78f5798a759862f7412b194d2624626a25afc9e046cfff27cc6fb75989e'

  # d1.music.126.net was verified as official when first introduced to the cask
  url "https://d1.music.126.net/dmusic/#{version.after_comma.before_colon}/#{version.after_colon}/NeteaseMusic_#{version.before_comma}_web.dmg",
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
