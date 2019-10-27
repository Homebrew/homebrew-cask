cask 'mosaic' do
  version '1.2.5'
  sha256 '9f2b9ef539e08b5f1bd8d4cc81186bd49dff20e09de3deeab312f1534a5de94a'

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
