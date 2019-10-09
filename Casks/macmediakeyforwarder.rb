cask 'macmediakeyforwarder' do
  version '3.0'
  sha256 '704e22a01e4d964c7a86ae33073658c90cc80cfdd4ece10bae06fee49d1ecb2d'

  url "http://milgra.com/downloads/mmkf/MacMediaKeyForwarder#{version}.zip"
  appcast 'http://milgra.com/downloads/mmkf/'
  name 'Mac Media Key Forwarder'
  homepage 'http://milgra.com/mac-media-key-forwarder.html'

  depends_on macos: '>= :sierra'

  app 'MacMediaKeyForwarder.app'

  zap trash: '~/Library/Preferences/com.milgra.hsmke.plist'
end
