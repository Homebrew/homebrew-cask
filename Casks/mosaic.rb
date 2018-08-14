cask 'mosaic' do
  version '1.1.2'
  sha256 'afd19bc961ef322e9f695e2350c1f4e5d8e63a9b07d0b64544cd15447d4ef0de'

  url "http://lightpillar.com/appdata/mosaic/archive/Mosaic_#{version.dots_to_underscores}.pkg"
  appcast 'http://lightpillar.com/appdata/mosaic/features/version-history.html'
  name 'Mosaic'
  homepage 'https://lightpillar.com/mosaic.html'

  pkg "Mosaic_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: 'com.btinternet.pkg.Mosaic'
end
