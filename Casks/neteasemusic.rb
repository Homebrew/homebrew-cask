cask :v1 => 'neteasemusic' do
  version :latest
  sha256 :no_check

  url 'http://music.163.com/api/osx/download/latest'
  name '网易云音乐'
  name 'NetEase cloud music'
  homepage 'http://music.163.com/#/download'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'NeteaseMusic.app'

  uninstall :quit => 'com.netease.163music'

  zap :delete => [
                  '~/Library/Caches/com.netease.163music',
                  '~/Library/Containers/com.netease.163music',
                  '~/Library/Preferences/com.netease.163music.plist',
                  '~/Library/Saved Application State/com.netease.163music.savedState'
                 ]
end
