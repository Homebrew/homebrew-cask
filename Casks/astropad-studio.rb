cask 'astropad-studio' do
  version '3.4.0'
  sha256 '0e6020a293d3e1ea48082afc0b8b3148f79b9b7f260f653e3d0a1b63e0235e68'

  # s3.amazonaws.com/astropad.com/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/astropad.com/downloads/AstropadStudio-#{version}.dmg"
  appcast 'https://s3.amazonaws.com/astropad.com/downloads/studio-sparkle.xml'
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
