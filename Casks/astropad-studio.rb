cask 'astropad-studio' do
  version '1.9.1'
  sha256 '8e1227283cae6ddef8c862a37f7a7d23d6fea917fed96695acdbe5476f6142f8'

  url "https://astropad.com/downloads/AstropadStudio-#{version}.zip"
  appcast 'https://astropad.com/downloads/studio-sparkle.xml',
          checkpoint: 'fc8300d50026dce0f41e925e8c9f56c50cd385972dfcdf03abacd41671f62ef3'
  name 'Astropad Studio'
  homepage 'https://astropad.com/'

  depends_on macos: '>= :mavericks'

  app 'Astropad Studio.app'

  uninstall quit: 'com.astro-hq.AstropadStudioMac'

  zap trash: [
               '~/Library/Caches/Astropad',
               '~/Library/Caches/com.astro-hq.AstropadStudioMac',
               '~/Library/Preferences/com.astro-hq.AstropadStudioMac.plist',
               '~/Library/Saved Application State/com.astro-hq.AstropadStudioMac.savedState',
             ]
end
