cask 'remote-play' do
  version :latest
  sha256 :no_check

  url 'https://remoteplay.dl.playstation.net/remoteplay/module/mac/RemotePlayInstaller.pkg'
  name 'PS4 Remote Play'
  homepage 'https://remoteplay.dl.playstation.net/remoteplay/'
  license :commercial

  depends_on macos: '>= :yosemite'

  pkg 'RemotePlayInstaller.pkg'

  uninstall pkgutil: 'com.playstation.RemotePlay.pkg'
end
