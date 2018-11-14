cask 'macmediakeyforwarder' do
  version '2.0'
  sha256 '3eff3459f07ccecfb0bd1c456bf4d4a281af12550166863599d7230567a8ed31'

  url "http://milgra.com/downloads/mmkf/MacMediaKeyForwarder#{version}.zip"
  name 'Mac Media Key Forwarder'
  homepage 'http://milgra.com/mac-media-key-forwarder.html'

  depends_on macos: '>= :sierra'

  app 'MacMediaKeyForwarder.app'

  uninstall login_item: 'MacMediaKeyForwarder'

  zap trash: '~/Library/Preferences/com.milgra.hsmke.plist'
end
