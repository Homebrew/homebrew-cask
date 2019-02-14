cask 'astropad' do
  version '3.0.1'
  sha256 'cfec6493fa6e6b0bc7297f0116f0d5b234872a4144cc2dec04a0c554a9029485'

  url "https://astropad.com/downloads/Astropad-#{version}.zip"
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
