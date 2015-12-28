cask 'electric-sheep' do
  version '2.7b36'
  sha256 'e8b35e203264adc6e8801d2e7c725453cca2c3adadda29640144ea3b50d37869'

  # d100rc88eim93q.cloudfront.net is the official download host per the vendor homepage
  url "https://d100rc88eim93q.cloudfront.net/electricsheep-#{version}.dmg"
  name 'Electric Sheep'
  homepage 'http://www.electricsheep.org'
  license :gpl

  pkg 'Electric Sheep.pkg'

  uninstall :pkgutil => 'org.electricsheep.electricSheep.*'
end
