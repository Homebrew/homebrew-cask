cask 'astropad' do
  version '2.2'
  sha256 '4b22b0e169698f5c87e3dbc2cc347c39045e602d9e2c30c2c478679107dc389c'

  url "http://astropad.com/downloads/Astropad-#{version}.zip"
  appcast 'http://astropad.com/downloads/sparkle.xml',
          checkpoint: 'a8b0dc1e374a65e02dab4ff0cc01e9f676c5ec9d93a8c00ec7097f3587e0ff25'
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
