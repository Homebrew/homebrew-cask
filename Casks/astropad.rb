cask :v1 => 'astropad' do
  version '1.3.3'
  sha256 '31aa1c77cad7744f0e978c0a225c9bdf3d558d1497713fce8e06f72eeea203d1'

  # amazonaws.com is the official download host per the appcast feed
  url "http://astropad.com/downloads/Astropad-#{version}.zip"
  appcast 'http://astropad.com/downloads/sparkle.xml',
          :sha256 => 'd9e1678a8eee11706e9b3d6d35f1626494e6d77904a65ad6826a7ff3862c30fe'
  name 'Astropad'
  homepage 'http://astropad.com/'
  license :gratis

  depends_on :macos => '>= :mavericks'

  app 'Astropad.app'

  uninstall :quit => 'com.astro-hq.AstropadMac'

  zap :delete => [
                  '~/Library/Caches/Astropad',
                  '~/Library/Caches/com.astro-hq.AstropadMac',
                  '~/Library/Preferences/com.astro-hq.AstropadMac.plist',
                  '~/Library/Saved Application State/com.astro-hq.AstropadMac.savedState'
                 ]
end
