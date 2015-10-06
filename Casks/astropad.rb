cask :v1 => 'astropad' do
  version '1.3'
  sha256 '115416cbdcc4cf2f745bb9c404a08f91d72d73facc156f4bc392e6671fa336ad'

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
