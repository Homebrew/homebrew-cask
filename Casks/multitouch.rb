cask 'multitouch' do
  version '1.15.1'
  sha256 '1e459b322355dd21d0b416dabd56d7449ec4486fb4f2f66eb4534a84e3872b60'

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
