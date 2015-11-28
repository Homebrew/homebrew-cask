cask :v1 => 'mapbox-studio-classic' do
  version '0.3.3'
  sha256 'e88ec6986fd0b3c05923cf0e647863137cf28a4246f8822949d934c873f050cb'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://mapbox.s3.amazonaws.com/mapbox-studio/mapbox-studio-darwin-x64-v#{version}.zip"
  name 'Mapbox Studio'
  homepage 'https://www.mapbox.com/mapbox-studio-classic/'
  license :bsd

  # App name is still Mapbox Studio.app, per vendor, despite "classic" designation
  app "mapbox-studio-darwin-x64-v#{version}/Mapbox Studio.app"
end
