cask 'macmediakeyforwarder' do
  version '2.8'
  sha256 'db7375b7d7c34f0430dc728c41f32ba29d753d789529ec80e63ba12493e57df7'

  url "http://milgra.com/downloads/mmkf/MacMediaKeyForwarder#{version}.zip"
  appcast 'http://milgra.com/downloads/mmkf/'
  name 'Mac Media Key Forwarder'
  homepage 'http://milgra.com/mac-media-key-forwarder.html'

  depends_on macos: '>= :sierra'

  app 'MacMediaKeyForwarder.app'

  zap trash: '~/Library/Preferences/com.milgra.hsmke.plist'
end
