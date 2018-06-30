cask 'mosaic' do
  version '1.1'
  sha256 '06adf0c701841cdfa959accfe0c2ab685be5b209ede2c2854283ae05a7ee6d81'

  url "http://lightpillar.com/appdata/mosaic/archive/Mosaic_#{version.dots_to_underscores}.pkg"
  appcast 'http://lightpillar.com/appdata/mosaic/features/version-history.html'
  name 'Mosaic'
  homepage 'https://lightpillar.com/mosaic.html'

  pkg "Mosaic_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: 'com.btinternet.pkg.Mosaic'
end
