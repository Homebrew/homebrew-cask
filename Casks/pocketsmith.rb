cask 'pocketsmith' do
  version '0.1.0'
  sha256 '6b1f0b167ad37b888a677cbade2c2a4445174d06cce20d934f77d80d4a4c8511'

  # d17qi61ltj6gb6.cloudfront.net was verified as official when first introduced to the cask
  url "https://d17qi61ltj6gb6.cloudfront.net/#{version}/PocketSmith.dmg"
  name 'PocketSmith'
  homepage 'https://www.pocketsmith.com/'

  app 'PocketSmith.app'
end
