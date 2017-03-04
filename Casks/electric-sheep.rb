cask 'electric-sheep' do
  version '3.0'
  sha256 'fb282864c10c9dfd4daa5612ca0f74e795d312bb2077be0fe8afffeed23dd7d7'

  # d100rc88eim93q.cloudfront.net was verified as official when first introduced to the cask
  url "https://d100rc88eim93q.cloudfront.net/electricsheep-#{version}.dmg"
  name 'Electric Sheep'
  homepage 'https://gold.electricsheep.org/'

  pkg 'Electric Sheep.pkg'

  uninstall pkgutil: 'org.electricsheep.electricSheep.*'
end
