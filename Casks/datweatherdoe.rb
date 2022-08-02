cask "datweatherdoe" do
  if MacOS.version <= :catalina
    version "2.2.0"
    sha256 "0e7c7a9a770f3f7e10a17610e4e8670f3c7050a872b1cb2947bfbbbfda94174f"
  else
    version "3.0.4"
    sha256 "0027ce869745594ff4cc560c93499a25adf2f64f04255444662c19ed22c7cdb5"
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
