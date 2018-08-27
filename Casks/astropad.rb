cask 'astropad' do
  version '2.4'
  sha256 '293d95530b06bcfca51a95db2c03959bfed6cc20836a704e965798aa2fdb7a91'

  url "https://astropad.com/downloads/Astropad-#{version}.zip"
  appcast 'https://astropad.com/downloads/sparkle.xml'
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
