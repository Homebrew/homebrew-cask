cask 'macmediakeyforwarder' do
  version '2.6'
  sha256 '9095ccf4f003d721fb227004f8f10832f4f524836eb2aaed119d1e067490bf00'

  url "http://milgra.com/downloads/mmkf/MacMediaKeyForwarder#{version}.zip"
  appcast 'http://milgra.com/downloads/mmkf/'
  name 'Mac Media Key Forwarder'
  homepage 'http://milgra.com/mac-media-key-forwarder.html'

  depends_on macos: '>= :sierra'

  app 'MacMediaKeyForwarder.app'

  uninstall login_item: 'MacMediaKeyForwarder'

  zap trash: '~/Library/Preferences/com.milgra.hsmke.plist'
end
