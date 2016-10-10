cask 'pg-commander' do
  version '1.5.9'
  sha256 '8c844dec96e459bd047bd60bc0daae2ee50f5af9594b506b627ff1ecc5395fff'

  # eggerapps-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://eggerapps-downloads.s3.amazonaws.com/pgcommander-#{version}.zip"
  name 'PG Commander'
  homepage 'https://eggerapps.at/pgcommander/'

  app 'PG Commander.app'
end
