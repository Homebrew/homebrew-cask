cask 'astropad-studio' do
  version '2.0'
  sha256 '60fa3e3922d91767881eb3137b50060ba4f7e314073281ad939b8af75130eff2'

  url "https://astropad.com/downloads/AstropadStudio-#{version}.zip"
  appcast 'https://astropad.com/downloads/studio-sparkle.xml'
  name 'Astropad Studio'
  homepage 'https://astropad.com/'

  depends_on macos: '>= :mavericks'

  app 'Astropad Studio.app'

  uninstall quit: 'com.astro-hq.AstropadStudioMac'

  zap trash: [
               '~/Library/Caches/Astropad',
               '~/Library/Caches/com.astro-hq.AstropadStudioMac',
               '~/Library/Preferences/com.astro-hq.AstropadStudioMac.plist',
               '~/Library/Saved Application State/com.astro-hq.AstropadStudioMac.savedState',
             ]
end
