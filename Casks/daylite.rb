cask :v1 => 'daylite' do
  version '5.0.9'
  sha256 '44f1f0fcf20d10581b7ee412ed83d8afced0b673087bf33e69f47ec0b6098f37'

  url "https://download.marketcircle.com/daylite/daylitedma#{version.delete('.')}.dmg"
  name 'Daylite'
  homepage 'https://www.marketcircle.com/daylite/'
  license :commercial

  pkg 'Install Daylite & Mail Assistant.pkg'

  uninstall :pkgutil => 'com.marketcircle.Daylite4.*'
end
