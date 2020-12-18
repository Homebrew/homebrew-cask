cask "datweatherdoe" do
  version "1.4.0"
  sha256 "63f9baa50f664532e483a87af890b6d6b23e7039dca408fcf17347868af83cc3"

  url "https://github.com/inderdhir/DatWeatherDoe/releases/download/#{version}/DatWeatherDoe-#{version}.dmg"
  appcast "https://github.com/inderdhir/DatWeatherDoe/releases.atom"
  name "DatWeatherDoe"
  desc "Menu bar weather app"
  homepage "https://github.com/inderdhir/DatWeatherDoe"

  app "DatWeatherDoe.app"
end
