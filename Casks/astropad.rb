cask 'astropad' do
  version '1.3.5'
  sha256 'd3f85f8a565d8335928ae1f4ea20be525de0f203ac0b323576d34d7958d7e41a'

  # amazonaws.com is the official download host per the appcast feed
  url "http://astropad.com/downloads/Astropad-#{version}.zip"
  appcast 'http://astropad.com/downloads/sparkle.xml',
          :sha256 => '7d2aadbee31513151e2afe988cce98d436ced0cfd15d27ee89a339015191370c'
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
                   '~/Library/Saved Application State/com.astro-hq.AstropadMac.savedState',
                 ]
end
