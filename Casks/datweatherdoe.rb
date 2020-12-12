cask "datweatherdoe" do
  version "1.3.1"
  sha256 "8c7381955d8d6e92d190b2c57c82336f5fd2db07e33d8b7f8b5d77dd8508a2d9"

  url "https://github.com/inderdhir/DatWeatherDoe/releases/download/#{version}/DatWeatherDoe-#{version}.dmg"
  appcast "https://github.com/inderdhir/DatWeatherDoe/releases.atom"
  name "DatWeatherDoe"
  desc "Menu bar weather app"
  homepage "https://github.com/inderdhir/DatWeatherDoe"

  app "DatWeatherDoe.app"
end
