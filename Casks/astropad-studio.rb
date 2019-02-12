cask 'astropad-studio' do
  version '3.0.1'
  sha256 'ff49790ab2cd57e32e9e3ae3f0db64ff636c11a1ce41cb7407c41390634fea97'

  url "https://astropad.com/downloads/AstropadStudio-#{version}.zip"
  appcast 'https://astropad.com/downloads/studio-sparkle.xml'
  name 'Astropad Studio'
  homepage 'https://astropad.com/'

  app 'Astropad Studio.app'

  uninstall quit: 'com.astro-hq.AstropadStudioMac'

  zap trash: [
               '~/Library/Caches/Astropad',
               '~/Library/Caches/com.astro-hq.AstropadStudioMac',
               '~/Library/Preferences/com.astro-hq.AstropadStudioMac.plist',
               '~/Library/Saved Application State/com.astro-hq.AstropadStudioMac.savedState',
             ]
end
