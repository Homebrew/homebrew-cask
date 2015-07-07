cask :v1 => 'mapbox-studio' do
  version '0.2.7'
  sha256 '4804b1304e08c31717ede103b13d5d84fecd3d3879b9413e0e73e193f4bdd3fd'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://mapbox.s3.amazonaws.com/mapbox-studio/mapbox-studio-darwin-x64-v#{version}.zip"
  name 'Mapbox Studio'
  homepage 'https://www.mapbox.com/mapbox-studio/'
  license :bsd

  app "mapbox-studio-darwin-x64-v#{version}/Mapbox Studio.app"
end
