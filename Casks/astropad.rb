cask 'astropad' do
  version '3.3.0'
  sha256 'c72f14f1969477a28dd7de5380dca5a0510d09bb1e64ff04c7f6d6b3c72a7ea1'

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
