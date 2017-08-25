cask 'fips' do
  version '3.1.1'
  sha256 'bc7e2d401dd577f2edf1c0e02b7b309e002df4b5069dd995e241a2c64337e69f'

  # github.com/matwey/fips3/releases was verified as official when first introduced to the cask
  url "https://github.com/matwey/fips3/releases/download/#{version}/Fips-#{version}-Darwin.dmg"
  appcast 'https://github.com/matwey/fips3/releases.atom',
          checkpoint: '86ab8bd37a91e7e2d93de73ede1255507c1b6704e6d3146c2e2b981d70810850'
  name 'Fips'
  homepage 'http://fips.space/'

  app 'Fips.app'
end
