cask 'macmediakeyforwarder' do
  version '2.1'
  sha256 'cc9367f440aef6183a1378f5a8e814743a769c8c770b29ed05ba0f00c4084870'

  url "http://milgra.com/downloads/mmkf/MacMediaKeyForwarder#{version}.zip"
  name 'Mac Media Key Forwarder'
  homepage 'http://milgra.com/mac-media-key-forwarder.html'

  depends_on macos: '>= :sierra'

  app 'MacMediaKeyForwarder.app'

  uninstall login_item: 'MacMediaKeyForwarder'

  zap trash: '~/Library/Preferences/com.milgra.hsmke.plist'
end
