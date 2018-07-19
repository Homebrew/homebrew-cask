cask 'fips' do
  version '3.2.3'
  sha256 'cf2a21c0196d591db7f1b580385785562e1c87e5565e9d142ff7b9838e325548'

  # github.com/matwey/fips3 was verified as official when first introduced to the cask
  url "https://github.com/matwey/fips3/releases/download/#{version}/Fips-#{version}-Darwin.dmg"
  appcast 'https://github.com/matwey/fips3/releases.atom'
  name 'Fips'
  homepage 'http://fips.space/'

  app 'Fips.app'
end
