cask 'neteasemusic' do
  version '1.5.9_622'
  sha256 'd1064db588388c2d54869f37366c7620c7f54997f186620b403d32bf9022c32a'

  # d1.music.126.net was verified as official when first introduced to the cask
  url "https://d1.music.126.net/dmusic/NeteaseMusic_#{version}_web.dmg"
  name 'NetEase cloud music'
  name '网易云音乐'
  homepage 'https://music.163.com/'

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
