class MapboxStudio < Cask
  version '0.1.0'
  sha256 'c36455cfa938c957cb08acd04281a5104702ab3b6ba0c76ae38bb6a55910296d'

  url 'https://mapbox.s3.amazonaws.com/mapbox-studio/mapbox-studio-darwin-x64-v0.1.0.zip'
  homepage 'https://www.mapbox.com/mapbox-studio/'

  app "mapbox-studio-darwin-x64-v#{version}/Mapbox Studio.app"
end
