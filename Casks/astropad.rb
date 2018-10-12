cask 'astropad' do
  version '2.6.0'
  sha256 'ded088104963b6d4f7119c9b90e9e8aa30932804e3f3381dfc48ae887958978a'

  url "https://astropad.com/downloads/Astropad-#{version}.zip"
  appcast 'https://astropad.com/downloads/sparkle.xml'
  name 'Astropad'
  homepage 'https://astropad.com/'

  depends_on macos: '>= :mavericks'

  app 'Astropad.app'

  uninstall quit: 'com.astro-hq.AstropadMac'

  zap trash: [
               '~/Library/Caches/Astropad',
               '~/Library/Caches/com.astro-hq.AstropadMac',
               '~/Library/Preferences/com.astro-hq.AstropadMac.plist',
               '~/Library/Saved Application State/com.astro-hq.AstropadMac.savedState',
             ]
end
