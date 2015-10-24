cask :v1 => 'astropad' do
  version '1.3'
  sha256 '115416cbdcc4cf2f745bb9c404a08f91d72d73facc156f4bc392e6671fa336ad'

  # amazonaws.com is the official download host per the appcast feed
  url "http://astropad.com/downloads/Astropad-#{version}.zip"
  appcast 'http://astropad.com/downloads/sparkle.xml',
          :sha256 => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
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
