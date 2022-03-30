cask "datweatherdoe" do
  version "3.0.2"
  sha256 "5a4b4e72f3ffdbc32e6ff1d1a4f886ac0c0d7603a94e84cef8956ca61562f49d"

  url "https://github.com/inderdhir/DatWeatherDoe/releases/download/#{version}/DatWeatherDoe-#{version}.dmg"
  name "DatWeatherDoe"
  desc "Menu bar weather app"
  homepage "https://github.com/inderdhir/DatWeatherDoe"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "DatWeatherDoe.app"

  zap trash: "~/Library/Preferences/com.inderdhir.DatWeatherDoe.plist"
end
