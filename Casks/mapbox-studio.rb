cask :v1 => 'mapbox-studio' do
  version '0.2.5'
  sha256 'f405cc58fdf46ebf36cdd4fbb98817ef605841c2ac0f99213ab249c1de137194'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://mapbox.s3.amazonaws.com/mapbox-studio/mapbox-studio-darwin-x64-v#{version}.zip"
  name 'Mapbox Studio'
  homepage 'https://www.mapbox.com/mapbox-studio/'
  license :bsd

  app "mapbox-studio-darwin-x64-v#{version}/Mapbox Studio.app"
end
