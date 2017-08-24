cask 'fips' do

  version '3.1.0'
  sha256 '2c53554e93b5ff8264cf98d707cf8cb80b539346f868066d8de8dc411556de01'

  # github.com/matwey/fips3/releases was verified as official when first introduced to the cask
  url "https://github.com/matwey/fips3/releases/download/#{version}/Fips-#{version}-Darwin.dmg"
  appcast 'https://github.com/matwey/fips3/releases.atom',
          checkpoint: '86ab8bd37a91e7e2d93de73ede1255507c1b6704e6d3146c2e2b981d70810850'
  name 'Fips'
  homepage 'http://fips.space/'

  depends_on macos: '>= :yosemite'

  app 'Fips.app'
end
