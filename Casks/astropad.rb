cask 'astropad' do
  version '2.2.4'
  sha256 '7022493a35b4413617851eec0465a54e5a643cb2c0dc7cf55c207c6cc6ae0910'

  url "http://astropad.com/downloads/Astropad-#{version}.zip"
  appcast 'http://astropad.com/downloads/sparkle.xml',
          checkpoint: '65983d8daac5119008fd5832b777e31254473e6199606c3c0580101c763e28a4'
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
