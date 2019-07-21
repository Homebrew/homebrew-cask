cask 'mosaic' do
  version '1.2.1'
  sha256 'a2225a340b71ec815c3391c5bd0d5dff6a2e13adc35863b2fd8dea620e2de2e8'

  url "https://lightpillar.com/appdata/mosaic/archive/Mosaic_#{version.dots_to_underscores}.pkg"
  appcast 'https://lightpillar.com/appdata/mosaic/features/version-history.html'
  name 'Mosaic'
  homepage 'https://lightpillar.com/mosaic.html'

  pkg "Mosaic_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: [
                       'com.btinternet.pkg.Mosaic',
                       'com.lightpillar.Mosaic.pkg',
                     ]

  zap trash: [
               '~/Library/Application Support/com.lightpillar.Mosaic',
               '~/Library/Caches/com.lightpillar.Mosaic',
               '~/Library/Preferences/com.lightpillar.Mosaic.plist',
             ]
end
