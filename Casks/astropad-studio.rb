cask 'astropad-studio' do
  version '1.8.0'
  sha256 '98e78f9fd35faf6bd5752208b64c2a6901bc3205b3053cf278f6842dba0a0c64'

  url "https://astropad.com/downloads/AstropadStudio-#{version}.zip"
  appcast 'https://astropad.com/downloads/studio-sparkle.xml',
          checkpoint: '090dac3584529d17a93fd97500e876efd50200092509eba327d2dceebd0424df'
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
