cask 'macmediakeyforwarder' do
  version '2.7'
  sha256 '1d35e9f01c216d56686e4ef604f8d4e641725c3b9f9a5784e8c636e8dc4b3eb3'

  url "http://milgra.com/downloads/mmkf/MacMediaKeyForwarder#{version}.zip"
  appcast 'http://milgra.com/downloads/mmkf/'
  name 'Mac Media Key Forwarder'
  homepage 'http://milgra.com/mac-media-key-forwarder.html'

  depends_on macos: '>= :sierra'

  app 'MacMediaKeyForwarder.app'

  uninstall login_item: 'MacMediaKeyForwarder'

  zap trash: '~/Library/Preferences/com.milgra.hsmke.plist'
end
