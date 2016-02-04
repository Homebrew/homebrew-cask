cask 'astropad' do
  version '1.3.6'
  sha256 '850f32f183e1c48d0456becfa57e7ae266676b05283327440ee67ece08d6282a'

  url "http://astropad.com/downloads/Astropad-#{version}.zip"
  appcast 'http://astropad.com/downloads/sparkle.xml',
          checkpoint: '4f4ee6ec91eede8c8d405cdeda30f406374fe9e3a264958ea7e0612e10291021'
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
