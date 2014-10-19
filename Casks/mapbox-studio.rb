class MapboxStudio < Cask
  version '0.1.5'
  sha256 '5da396ebd7bde39d211d0edf2de1b27bfe974c33e7edd0c27966053df6055ab0'

  url "https://mapbox.s3.amazonaws.com/mapbox-studio/mapbox-studio-darwin-x64-v#{version}.zip"
  homepage 'https://www.mapbox.com/mapbox-studio/'
  license :bsd

  app "mapbox-studio-darwin-x64-v#{version}/Mapbox Studio.app"
end
