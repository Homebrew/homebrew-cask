cask "datweatherdoe" do
  version "1.3.0"
  sha256 "a076722eaa3bf55a0a08811e326e5e1160a57dc3d9ef5b6f0760e8f146b1b274"

  url "https://github.com/inderdhir/DatWeatherDoe/releases/download/#{version}/DatWeatherDoe-#{version}.dmg"
  appcast "https://github.com/inderdhir/DatWeatherDoe/releases.atom"
  name "DatWeatherDoe"
  desc "Menu bar weather app"
  homepage "https://github.com/inderdhir/DatWeatherDoe"

  app "DatWeatherDoe.app"
end
