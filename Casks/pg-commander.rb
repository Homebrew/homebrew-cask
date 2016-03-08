cask 'pg-commander' do
  version '1.5.7'
  sha256 'd5e48dea90d3060dd1f11f86101f953f6692e91340974fa7d88b85038e201240'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3-eu-west-1.amazonaws.com/eggerapps-downloads/pgcommander-#{version}.zip"
  name 'PG Commander'
  homepage 'https://eggerapps.at/pgcommander/'
  license :commercial

  app 'PG Commander.app'
end
