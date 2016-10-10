cask 'aqua-data-studio' do
  version '17.0.6'
  sha256 '94ef1e2e650a8b6773362127f079c1fd189c509c4e01c0422f89642e8fff21d8'

  url "http://www.aquafold.com/download/v#{version.major}.0.0/osx/ads-osx-#{version}.tar.gz"
  name 'Aquafold Aqua Data Studio'
  homepage 'http://www.aquafold.com/aquadatastudio.html'

  app 'Aqua Data Studio.app'
end
