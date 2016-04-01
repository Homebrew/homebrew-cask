cask '0ad' do
  version '0.0.20-alpha'
  sha256 '5161cc784fc0a4e11bf48648cf09cb6f5b38afd13a6e32fa484497690e253f86'

  # wildfiregames.com was verified as official when first introduced to the cask
  url "http://releases.wildfiregames.com/0ad-#{version}-osx64.dmg"
  name '0 A.D.'
  homepage 'http://www.play0ad.com/'
  license :oss

  app '0ad.app'
end
