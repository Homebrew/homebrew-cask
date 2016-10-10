cask 'daylite' do
  version '5.0.11'
  sha256 'ad5faf28e6119be823f66e4c94829f5dded2f5a91c74c7ac911a6d73a783f5ea'

  url "https://download.marketcircle.com/daylite/daylitedma#{version.no_dots}.dmg"
  name 'Daylite'
  homepage 'https://www.marketcircle.com/daylite/'

  pkg 'Install Daylite & Mail Assistant.pkg'

  uninstall pkgutil: 'com.marketcircle.Daylite4.*'
end
