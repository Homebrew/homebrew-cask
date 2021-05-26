cask "datweatherdoe" do
  version "2.0.0"
  sha256 "112003d0e540de7d731fb5b4413de8d885250536b5f3237bc5a2b32fc9e47f8f"

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
