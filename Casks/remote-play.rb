cask 'remote-play' do
  version :latest
  sha256 :no_check

  url 'https://remoteplay.dl.playstation.net/remoteplay/module/mac/RemotePlayInstaller.pkg'
  name 'PS4 Remote Play'
  homepage 'https://remoteplay.dl.playstation.net/remoteplay/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  pkg 'RemotePlayInstaller.pkg'

  uninstall pkgutil: 'com.playstation.RemotePlay.pkg'

  zap trash: [
               '~/Library/Application Support/Sony Corporation/PS4 Remote Play',
               '~/Library/Caches/com.playstation.RemotePlay',
               '~/Library/Cookies/com.playstation.RemotePlay.binarycookies',
               '~/Library/Preferences/com.playstation.RemotePlay.plist',
             ]
end
