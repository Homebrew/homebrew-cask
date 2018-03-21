cask 'astropad' do
  version '2.3.0'
  sha256 '26f7e1a7821aeb2232c5a301a8bde816bfa033261d8df7f230a84d4923019f38'

  url "https://astropad.com/downloads/Astropad-#{version}.zip"
  appcast 'https://astropad.com/downloads/sparkle.xml',
          checkpoint: '825379d624706271b94f64e13b98aa1aa984cf8730f3f8246de86e0674c43723'
  name 'Astropad'
  homepage 'https://astropad.com/'

  depends_on macos: '>= :mavericks'

  app 'Astropad.app'

  uninstall quit: 'com.astro-hq.AstropadMac'

  zap trash: [
               '~/Library/Caches/Astropad',
               '~/Library/Caches/com.astro-hq.AstropadMac',
               '~/Library/Preferences/com.astro-hq.AstropadMac.plist',
               '~/Library/Saved Application State/com.astro-hq.AstropadMac.savedState',
             ]
end
