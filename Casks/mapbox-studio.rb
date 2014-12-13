cask :v1 => 'mapbox-studio' do
  version '0.2.0'
  sha256 '20837f952042c9e1f5eeb4974940ae4731d082601e323eaa986b77c32adf6c9c'

  url "https://mapbox.s3.amazonaws.com/mapbox-studio/mapbox-studio-darwin-x64-v#{version}.zip"
  name 'Mapbox Studio'
  homepage 'https://www.mapbox.com/mapbox-studio/'
  license :bsd

  app "mapbox-studio-darwin-x64-v#{version}/Mapbox Studio.app"
end
