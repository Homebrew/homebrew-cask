cask "datweatherdoe" do
  version "2.0.1"
  sha256 "7e5fe45fad60a173a690ed7d515b8e9421fb548e2b0dee4bc2a355e632d12a40"

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
