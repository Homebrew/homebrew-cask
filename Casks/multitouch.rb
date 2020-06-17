cask 'multitouch' do
  version '1.17.16'
  sha256 'd1c04fb0b0cbfa6ab6d2ba465862ab075c6929c501f5b84c029a558e653fc20b'

  url "https://multitouch.app/downloads/multitouch#{version}.dmg"
  appcast 'https://www.multitouch.app/downloads/updates.xml'
  name 'Multitouch'
  homepage 'https://multitouch.app/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Multitouch.app'

  zap trash: [
               '~/Library/Preferences/com.brassmonkery.Multitouch',
               '~/Library/Application Support/Multitouch',
               '~/Library/Caches/com.brassmonkery.Multitouch',
             ]
end
