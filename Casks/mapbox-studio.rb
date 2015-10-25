cask :v1 => 'mapbox-studio' do
  version '0.3.2'
  sha256 'e89a8f55d5f1073be99bb00c29988eb6b47c1f15ed874f80296e89831ed61dfa'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://mapbox.s3.amazonaws.com/mapbox-studio/mapbox-studio-darwin-x64-v#{version}.zip"
  name 'Mapbox Studio'
  homepage 'https://www.mapbox.com/mapbox-studio/'
  license :bsd

  app "mapbox-studio-darwin-x64-v#{version}/Mapbox Studio.app"
end
