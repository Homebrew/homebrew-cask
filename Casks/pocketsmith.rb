cask 'pocketsmith' do
  version '0.1.1'
  sha256 '371caff85ccae05b78d42b7d5c973735ab626f5f7284da772599b4360294f295'

  # d17qi61ltj6gb6.cloudfront.net was verified as official when first introduced to the cask
  url "https://d17qi61ltj6gb6.cloudfront.net/#{version}/PocketSmith.dmg"
  name 'PocketSmith'
  homepage 'https://www.pocketsmith.com/'

  app 'PocketSmith.app'
end
