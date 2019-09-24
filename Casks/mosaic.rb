cask 'mosaic' do
  version '1.2.4'
  sha256 '105b2628a85cf67632c445a1280181d7ff7793c6df3c4e89b7c8b7ffc06f43ad'

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
