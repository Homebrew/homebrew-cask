cask 'neteasemusic' do
  version '2.1.0_782,fc12:2019520102850'
  sha256 '2a8d7bae60be9cf86af4eb48b3041d290a1dcde4df7cc99292ec724b6c50b1e8'

  # d1.music.126.net was verified as official when first introduced to the cask
  url "https://d1.music.126.net/dmusic/#{version.after_comma.before_colon}/#{version.after_colon}/NeteaseMusic_#{version.before_comma}_web.dmg"
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
