cask :v1 => 'mapbox-studio' do
  version '0.1.5'
  sha256 '284741137e2d711107debe0a5d940cee3d3a3eece55f4e95beb8de98006f116f'

  url "https://mapbox.s3.amazonaws.com/mapbox-studio/mapbox-studio-darwin-x64-v#{version}.zip"
  homepage 'https://www.mapbox.com/mapbox-studio/'
  license :bsd

  app "mapbox-studio-darwin-x64-v#{version}/Mapbox Studio.app"
end
