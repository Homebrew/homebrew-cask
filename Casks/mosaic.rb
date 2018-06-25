cask 'mosaic' do
  version '1.0.10'
  sha256 'eae92c55c5c1b3ddfab4be6541ead5846919a057f1fbc0811c624ff27f2ac544'

  url "http://lightpillar.com/appdata/mosaic/archive/Mosaic_#{version.dots_to_underscores}.pkg"
  appcast 'http://lightpillar.com/appdata/mosaic/features/version-history.html'
  name 'Mosaic'
  homepage 'https://lightpillar.com/mosaic.html'

  pkg "Mosaic_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: 'com.btinternet.pkg.Mosaic'
end
