cask 'aqua-data-studio' do
  version '20.5.0'
  sha256 '48f3b3c15746fd6f1fbe6b151ddbefa64d1c10d6ac6cff802581a42c07648081'

  url "http://downloads.aquafold.com/v#{version.major_minor}.0/osx/ads-osx-#{version}.tar.gz"
  appcast 'https://www.aquafold.com/aquadatastudio_downloads'
  name 'Aquafold Aqua Data Studio'
  homepage 'https://www.aquafold.com/aquadatastudio'

  app 'Aqua Data Studio.app'
end
