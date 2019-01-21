cask 'macmediakeyforwarder' do
  version '2.3'
  sha256 'ce50a9b41928421a2fc56ae28fdd6c5c42757d69bd900bc0419a1599decb1d55'

  url "http://milgra.com/downloads/mmkf/MacMediaKeyForwarder#{version}.zip"
  name 'Mac Media Key Forwarder'
  homepage 'http://milgra.com/mac-media-key-forwarder.html'

  depends_on macos: '>= :sierra'

  app 'MacMediaKeyForwarder.app'

  uninstall login_item: 'MacMediaKeyForwarder'

  zap trash: '~/Library/Preferences/com.milgra.hsmke.plist'
end
