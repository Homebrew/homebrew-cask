cask 'astropad' do
  version '3.4.0'
  sha256 'bc90d1888452a08d48e52b5ef298bcc4e5ab67fc29fef5aa8b8a95ffbea23f02'

  url "https://downloads.astropad.com/standard/Astropad-#{version}.dmg"
  appcast 'https://s3.amazonaws.com/astropad.com/downloads/sparkle.xml'
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
