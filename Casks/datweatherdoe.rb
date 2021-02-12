cask "datweatherdoe" do
  version "1.4.1"
  sha256 "69f3f66313922aed24daa100288332af9e1fa34f4bb6aae05811f6075a837f2a"

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
