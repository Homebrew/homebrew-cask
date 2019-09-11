cask 'astropad' do
  version '3.2.1'
  sha256 '54132253068fa556a1c002f4a527b2f9fc14ed8dd2d1414117e4760572ff0b30'

  url "https://astropad.com/downloads/Astropad-#{version}.dmg"
  appcast 'https://astropad.com/downloads/sparkle.xml'
  name 'Astropad'
  homepage 'https://astropad.com/'

  app 'Astropad.app'

  uninstall quit: 'com.astro-hq.AstropadMac'

  zap trash: [
               '~/Library/Caches/Astropad',
               '~/Library/Caches/com.astro-hq.AstropadMac',
               '~/Library/Preferences/com.astro-hq.AstropadMac.plist',
               '~/Library/Saved Application State/com.astro-hq.AstropadMac.savedState',
             ]
end
