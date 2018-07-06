cask 'mosaic' do
  version '1.1.1'
  sha256 '5c695e22a78bb1f1e75b85e13c5b957fe054a0dcd0a76c5c39405204c0dc442d'

  url "http://lightpillar.com/appdata/mosaic/archive/Mosaic_#{version.dots_to_underscores}.pkg"
  appcast 'http://lightpillar.com/appdata/mosaic/features/version-history.html'
  name 'Mosaic'
  homepage 'https://lightpillar.com/mosaic.html'

  pkg "Mosaic_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: 'com.btinternet.pkg.Mosaic'
end
