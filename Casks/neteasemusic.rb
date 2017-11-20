cask 'neteasemusic' do
  version '1.5.7_580'
  sha256 'a1ede5a8e3ec027ec670fb989dbefa23bd5a5c021af56f16c2c24fa0ff26489a'

  # d1.music.126.net was verified as official when first introduced to the cask
  url "http://d1.music.126.net/dmusic/NeteaseMusic_#{version}_web.dmg"
  name 'NetEase cloud music'
  name '网易云音乐'
  homepage 'http://music.163.com/#/download'

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
