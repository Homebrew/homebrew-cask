cask 'macmediakeyforwarder' do
  version '2.0'
  sha256 '4941afa2ed60bf098e25a62d2ef3a42dfadcd38c18c39d4ae59cfd591ed63d1a'

  url "http://milgra.com/downloads/hsme/MacMediaKeyForwarder#{version}.zip"
  name 'Mac Media Key Forwarder'
  homepage 'http://milgra.com/mac-media-key-forwarder.html'

  depends_on macos: '>= :sierra'

  app 'MacMediaKeyForwarder.app'

  uninstall login_item: 'MacMediaKeyForwarder'

  zap trash: '~/Library/Preferences/com.milgra.hsmke.plist'
end
