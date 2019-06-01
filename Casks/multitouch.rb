cask 'multitouch' do
  version '1.12'
  sha256 '6e748d568f5a41598913a70b4eebc51943d58bcc6b409b7e9120a128c44bbb8e'

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
