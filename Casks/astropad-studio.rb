cask 'astropad-studio' do
  version '3.1'
  sha256 'c8bb192e60f54f8fee090aa94a206f51813bed969c123538f429a2215f65e143'

  url "https://astropad.com/downloads/AstropadStudio-#{version}.zip"
  appcast 'https://astropad.com/downloads/studio-sparkle.xml'
  name 'Astropad Studio'
  homepage 'https://astropad.com/'

  app 'Astropad Studio.app'

  uninstall quit: 'com.astro-hq.AstropadStudioMac'

  zap trash: [
               '~/Library/Caches/Astropad',
               '~/Library/Caches/com.astro-hq.AstropadStudioMac',
               '~/Library/Preferences/com.astro-hq.AstropadStudioMac.plist',
               '~/Library/Saved Application State/com.astro-hq.AstropadStudioMac.savedState',
             ]
end
