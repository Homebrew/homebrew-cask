cask 'astropad' do
  version '1.4.3'
  sha256 '105b2618a222f2098eda53d9b8e2b7dd5fba9b9e17fb2598b25ec3b7e0041696'

  url "http://astropad.com/downloads/Astropad-#{version}.zip"
  appcast 'http://astropad.com/downloads/sparkle.xml',
          checkpoint: '8053a00eb920bc7f9d87ed5f22d8aafd1624cc3876009bab4e31be305a0b8c33'
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
