cask 'macmediakeyforwarder' do
  version '2.5'
  sha256 '4fabc1cde4cb460f68c4801f310fb1f83f7db4b06055e9bac9c597d073c0ffd3'

  url "http://milgra.com/downloads/mmkf/MacMediaKeyForwarder#{version}.zip"
  appcast 'http://milgra.com/downloads/mmkf/'
  name 'Mac Media Key Forwarder'
  homepage 'http://milgra.com/mac-media-key-forwarder.html'

  depends_on macos: '>= :sierra'

  app 'MacMediaKeyForwarder.app'

  uninstall login_item: 'MacMediaKeyForwarder'

  zap trash: '~/Library/Preferences/com.milgra.hsmke.plist'
end
