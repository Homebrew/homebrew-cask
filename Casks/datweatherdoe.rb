cask "datweatherdoe" do
  version "2.1.1"
  sha256 "ad361b0e0014b104720002628aa5aeed62535256f6e86e25ffce445b9e0a5bbb"

  url "https://github.com/inderdhir/DatWeatherDoe/releases/download/#{version}/DatWeatherDoe-#{version}.dmg"
  name "DatWeatherDoe"
  desc "Menu bar weather app"
  homepage "https://github.com/inderdhir/DatWeatherDoe"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "DatWeatherDoe.app"
end
