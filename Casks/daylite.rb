cask 'daylite' do
  version '6.1.1'
  sha256 '35d1f2a1e78e0eab29218b163c1c06dd2fed63c87e5eb64166e8009b2ea23227'

  url "https://download.marketcircle.com/daylite/daylitedma#{version.no_dots}.dmg"
  name 'Daylite'
  homepage 'https://www.marketcircle.com/daylite/'

  pkg 'Install Daylite & Mail Assistant.pkg'

  uninstall pkgutil: [
                       'com.marketcircle.pkg.DLBase',
                       'com.marketcircle.pkg.DMABase',
                     ]
end
