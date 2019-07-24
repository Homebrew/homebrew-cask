cask 'multitouch' do
  version '1.15.2'
  sha256 'd0e1afc92ad014548303e623a5634f529bac150eeb389e5e3c67630da3feb105'

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
