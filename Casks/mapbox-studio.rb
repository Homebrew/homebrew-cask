cask :v1 => 'mapbox-studio' do
  version '0.3.1'
  sha256 'ed5cb9ca0db8135caf2b82c30e3b58c4ad1689f7a3b6d05d7ecf82642c95e812'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://mapbox.s3.amazonaws.com/mapbox-studio/mapbox-studio-darwin-x64-v#{version}.zip"
  name 'Mapbox Studio'
  homepage 'https://www.mapbox.com/mapbox-studio/'
  license :bsd

  app "mapbox-studio-darwin-x64-v#{version}/Mapbox Studio.app"
end
