cask :v1 => 'daylite' do
  version '5.0.10'
  sha256 'b9243e731511d3b7f29a453e886e4f8e3c60c961ee047d25bff8151baeb728cd'

  url "https://download.marketcircle.com/daylite/daylitedma#{version.delete('.')}.dmg"
  name 'Daylite'
  homepage 'https://www.marketcircle.com/daylite/'
  license :commercial

  pkg 'Install Daylite & Mail Assistant.pkg'

  uninstall :pkgutil => 'com.marketcircle.Daylite4.*'
end
