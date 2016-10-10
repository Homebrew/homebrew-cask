cask 'astropad' do
  version '2.0.5'
  sha256 '98fcda4acce8887a21ebdd550a3212a066a854e60052eb39917fa6c7aadac06e'

  url "http://astropad.com/downloads/Astropad-#{version}.zip"
  appcast 'http://astropad.com/downloads/sparkle.xml',
          checkpoint: 'c9d1e8e8daea79d0033bb9b63dbf0fc4a5e85216c091ec829a11772998c4dd41'
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
