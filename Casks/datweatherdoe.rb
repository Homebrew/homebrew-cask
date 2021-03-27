cask "datweatherdoe" do
  version "1.5.0"
  sha256 "c12caf1bf6134b817afde2c09af86cff07d5dfe36bf780216ced6f4b272eabbc"

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
