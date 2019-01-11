cask 'macmediakeyforwarder' do
  version '2.2'
  sha256 'e9b2644ee4e7ebcbe2f1240143997a4c1f3c1c274125f1260da716a4ac3b78e2'

  url "http://milgra.com/downloads/mmkf/MacMediaKeyForwarder#{version}.zip"
  name 'Mac Media Key Forwarder'
  homepage 'http://milgra.com/mac-media-key-forwarder.html'

  depends_on macos: '>= :sierra'

  app 'MacMediaKeyForwarder.app'

  uninstall login_item: 'MacMediaKeyForwarder'

  zap trash: '~/Library/Preferences/com.milgra.hsmke.plist'
end
