cask 'astropad' do
  version '2.0.0'
  sha256 '6850f66e53bafe05fe1a5f93e9f2199fcfa64bd1de2d1ba7357b1b62ba9b81b3'

  url "http://astropad.com/downloads/Astropad-#{version}.zip"
  appcast 'http://astropad.com/downloads/sparkle.xml',
          checkpoint: 'aab0e83165b005c4b0bac390dc063e88de2d4b38f73d1aa038b68e7e28caf1e6'
  name 'Astropad'
  homepage 'http://astropad.com/'
  license :gratis

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
