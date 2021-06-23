cask "datweatherdoe" do
  version "2.1.0"
  sha256 "9d96fc77d60002bb080429d28e728e791afb117b5f800d3d21b8a864d73cefe5"

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
