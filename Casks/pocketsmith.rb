cask 'pocketsmith' do
  version '0.1.2'
  sha256 '0e8e61b28bef9fb006af8ba09d3556080c07b50e24dec2aa71db6c996bf3fda1'

  # d17qi61ltj6gb6.cloudfront.net was verified as official when first introduced to the cask
  url "https://d17qi61ltj6gb6.cloudfront.net/#{version}/PocketSmith.dmg"
  name 'PocketSmith'
  homepage 'https://www.pocketsmith.com/'

  app 'PocketSmith.app'
end
