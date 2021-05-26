cask "datweatherdoe" do
  version "2.0.0"
  sha256 "890bfec01dabf84d04a3562d715b1e16a5e918d84183ea0ab4e269d03277fd54"

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
