cask 'fips' do
  version '3.1.0'
  sha256 '2c53554e93b5ff8264cf98d707cf8cb80b539346f868066d8de8dc411556de01'

  # github.com/matwey/fips3/releases was verified as official when first introduced to the cask
  url "https://github.com/matwey/fips3/releases/download/#{version}/Fips-#{version}-Darwin.dmg"
  appcast 'https://github.com/matwey/fips3/releases.atom',
          checkpoint: 'd0416bc12df4f5d435f4b3e98949dd1019c14af03650ad20a1ed041942b6e72d'
  name 'Fips'
  homepage 'http://fips.space/'

  app 'Fips.app'
end
