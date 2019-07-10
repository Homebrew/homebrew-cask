cask 'mosaic' do
  version '1.2'
  sha256 '4c639a2dc32ebd04667738f44b419098a5d141578c4ce77fa55b6155c2df06ef'

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
