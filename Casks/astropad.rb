cask 'astropad' do
  version '2.1.3'
  sha256 'be1ef9e03810dda70bb5001cb2a8ca1e7b29ccbb58e7a243a228f0546816486a'

  url "http://astropad.com/downloads/Astropad-#{version}.zip"
  appcast 'http://astropad.com/downloads/sparkle.xml',
          checkpoint: '38749c3a42304c487957058be040a75c9305260a8723e8eb705c95c06567358e'
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
