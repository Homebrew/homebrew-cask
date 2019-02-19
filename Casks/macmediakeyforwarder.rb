cask 'macmediakeyforwarder' do
  version '2.4'
  sha256 '8be06b389caba6ccf0132cba566b280b8d670a3146a906ddb6f818afe6a82161'

  url "http://milgra.com/downloads/mmkf/MacMediaKeyForwarder#{version}.zip"
  name 'Mac Media Key Forwarder'
  homepage 'http://milgra.com/mac-media-key-forwarder.html'

  depends_on macos: '>= :sierra'

  app 'MacMediaKeyForwarder.app'

  uninstall login_item: 'MacMediaKeyForwarder'

  zap trash: '~/Library/Preferences/com.milgra.hsmke.plist'
end
