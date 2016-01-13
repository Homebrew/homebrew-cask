cask 'biba' do
  version '3.7.3752'
  sha256 'fad2844cf812ee2b51c885e79d2a6fee9709ea4106e2e7ab49bcfa86b02ba7a4'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3-us-west-1.amazonaws.com/downloads.biba.com/builds/Biba-OSX-#{version}.dmg"
  appcast 'https://s3-us-west-1.amazonaws.com/downloads.biba.com/appcast/mac',
          :sha256 => '35558aeeb9765d3371eda6e7f55d232813c91c96acd5468bb65e46df2aed3318'
  name 'Biba'
  homepage 'https://www.biba.com'
  license :closed

  app 'Biba.app'
end
