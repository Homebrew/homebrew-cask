cask 'astropad' do
  version '2.1'
  sha256 'a021745e3d0630c3c05641be06b6e7b1fa2f527d0507ae5bcdd2b5e4f14f02af'

  url "http://astropad.com/downloads/Astropad-#{version}.zip"
  appcast 'http://astropad.com/downloads/sparkle.xml',
          checkpoint: '8cf1d5f9491a234ba342e1dd162f9e427a581f93d38ae00950cb323d4daa14e0'
  name 'Astropad'
  homepage 'http://astropad.com/'

  depends_on macos: '>= :mavericks'

  app 'Astropad.app'

  uninstall quit: 'com.astro-hq.AstropadMac'

  zap delete: [
                '~/Library/Caches/Astropad',
                '~/Library/Caches/com.astro-hq.AstropadMac',
                '~/Library/Preferences/com.astro-hq.AstropadMac.plist',
                '~/Library/Saved Application State/com.astro-hq.AstropadMac.savedState',
              ]
end
