cask 'daylite' do
  version '6.1.3'
  sha256 'dde46c27686d60d27d39d123116f15c7c851dcbeda4f7c652669de22d98104b6'

  url "https://download.marketcircle.com/daylite/daylitedma#{version.no_dots}.dmg"
  name 'Daylite'
  homepage 'https://www.marketcircle.com/'

  pkg 'Install Daylite & Mail Assistant.pkg'

  uninstall pkgutil: [
                       'com.marketcircle.pkg.DLBase',
                       'com.marketcircle.pkg.DMABase',
                     ]
end
