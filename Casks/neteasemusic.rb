cask 'neteasemusic' do
  version '1.5.8_616'
  sha256 'ee1ff2878ebe24a44b535cd215567c9f50632d2200e943999293a26c8afd0e01'

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
