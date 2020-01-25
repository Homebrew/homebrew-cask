cask 'multitouch' do
  version '1.16.12'
  sha256 '66c2fb3196d6fb8b98a0b8624f88e412db80206fe60001f6f7fc514ca0c12efa'

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
