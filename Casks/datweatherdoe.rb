cask "datweatherdoe" do
  if MacOS.version <= :catalina
    version "2.2.0"
    sha256 "0e7c7a9a770f3f7e10a17610e4e8670f3c7050a872b1cb2947bfbbbfda94174f"
  else
    version "3.0.3"
    sha256 "4da5a62aae8549555b9c5f0aa39313687877e98d8a63191bbc90a418e1cd45d0"
  end

  url "https://github.com/inderdhir/DatWeatherDoe/releases/download/#{version}/DatWeatherDoe-#{version}.dmg"
  name "DatWeatherDoe"
  desc "Menu bar weather app"
  homepage "https://github.com/inderdhir/DatWeatherDoe"

  if MacOS.version <= :catalina
    livecheck do
      skip "Legacy version for Catalina and earlier"
    end
  else
    livecheck do
      url :url
      strategy :github_latest
    end
  end

  app "DatWeatherDoe.app"

  zap trash: "~/Library/Preferences/com.inderdhir.DatWeatherDoe.plist"
end
