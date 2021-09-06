cask "datweatherdoe" do
  version "2.1.2"
  sha256 "484612af1478c18ed089c9f23652bc461483f295ad9561e7d912c095b51a0c0b"

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
