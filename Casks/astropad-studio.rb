cask 'astropad-studio' do
  version '3.3.0'
  sha256 '55d6d08f5b70a1ffd89dd5864312bddc3c3df1784a848d0ba408dff1dec775fd'

  # s3.amazonaws.com/astropad.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/astropad.com/downloads/AstropadStudio-#{version}.dmg"
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
