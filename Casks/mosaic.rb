cask 'mosaic' do
  version '1.2.2'
  sha256 '5389fc7aaf0e66d92f8d4f6d73aa92ecbba1d29de6498d53c316869f256ab51c'

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
