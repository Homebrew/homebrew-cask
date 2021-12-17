cask "datweatherdoe" do
  version "2.1.6"
  sha256 "9ffc97df11876a28b87aa11bc511c930fc79c02ee9512f7eb9e68aca75246bf4"

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
