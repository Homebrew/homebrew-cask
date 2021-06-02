cask "datweatherdoe" do
  version "2.0.2"
  sha256 "3d23df922fe8dbbf5ab02273830e65ed26aa371ec0443a5ab6e44176eec8f612"

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
