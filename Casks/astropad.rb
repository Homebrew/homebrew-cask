cask 'astropad' do
  version '2.2.3'
  sha256 'd479b847043ce540377b2763ce510bd437cc1d4cc0dc2848136af4bccf80385b'

  url "http://astropad.com/downloads/Astropad-#{version}.zip"
  appcast 'http://astropad.com/downloads/sparkle.xml',
          checkpoint: '572c90939b02987d93fb9245a52bf777c5c2bd04b4f9886f6cb8f7ad90a6b0fe'
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
