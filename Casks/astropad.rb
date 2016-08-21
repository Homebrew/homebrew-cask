cask 'astropad' do
  version '2.0.3'
  sha256 '813a0042ce195238c25b76794bf27313423ac800a7c4fc0cfbf67fd5797f454b'

  url "http://astropad.com/downloads/Astropad-#{version}.zip"
  appcast 'http://astropad.com/downloads/sparkle.xml',
          checkpoint: '0324b152861cfba54b2e675e64ec66a1aadfa4fe7e337478d1dc369b4819f12f'
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
