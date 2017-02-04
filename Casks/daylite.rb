cask 'daylite' do
  version '6.0.8'
  sha256 '564325ecd8931b8b8e69bdad473b1de68440011195fdd5944d963afe0ac76b17'

  url "https://download.marketcircle.com/daylite/daylitedma#{version.no_dots}.dmg"
  name 'Daylite'
  homepage 'https://www.marketcircle.com/daylite/'

  pkg 'Install Daylite & Mail Assistant.pkg'

  uninstall pkgutil: 'com.marketcircle.Daylite4.*'
end
