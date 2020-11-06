cask "stationtv-link" do
  version "1.0.7"
  sha256 "a249ce9e57c709894ca038c0c58b203a8192fc0a398e28be4056f9bcda7f3142"

  url "http://download.pixela.co.jp/products/tv_capture/stationtv_link/data/stationtvlink_#{version.no_dots}.dmg"
  name "StationTV® Link"
  homepage "http://www.pixela.co.jp/products/tv_capture/stationtv_link/"

  app "StationTV Link.app"
end
