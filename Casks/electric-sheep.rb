cask 'electric-sheep' do
  version '3.0.2'
  sha256 'db689d0aeac776a3f189205efa32331c0c00b0bea608408b2e855557c56f5937'

  # d100rc88eim93q.cloudfront.net was verified as official when first introduced to the cask
  url "https://d100rc88eim93q.cloudfront.net/electricsheep-#{version}.dmg"
  name 'Electric Sheep'
  homepage 'https://gold.electricsheep.org/'

  pkg 'Electric Sheep.pkg'

  uninstall pkgutil: 'org.electricsheep.electricSheep.*'
end
