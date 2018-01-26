cask 'electric-sheep' do
  version '3.0.1a'
  sha256 '686c5f5a958c24be28e7f195c7aff29d418ab21acb4ed5de2d6c09a8f2560bda'

  # d100rc88eim93q.cloudfront.net was verified as official when first introduced to the cask
  url "https://d100rc88eim93q.cloudfront.net/electricsheep-#{version}.dmg"
  name 'Electric Sheep'
  homepage 'https://gold.electricsheep.org/'

  pkg 'Electric Sheep.pkg'

  uninstall pkgutil: 'org.electricsheep.electricSheep.*'
end
