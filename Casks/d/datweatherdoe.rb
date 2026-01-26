cask "datweatherdoe" do
  on_monterey :or_older do
    on_catalina :or_older do
      version "2.2.0"
      sha256 "0e7c7a9a770f3f7e10a17610e4e8670f3c7050a872b1cb2947bfbbbfda94174f"
    end
    on_big_sur :or_newer do
      version "3.3.0"
      sha256 "8f122fb410019c4065229b01bb3af9630eceef192f3bcb605ea679c7c9143f4a"
    end

    livecheck do
      skip "Legacy version"
    end
  end
  on_ventura :or_newer do
    version "5.6.1"
    sha256 "f1643a231d2eba073b07aafbc3c7c6e0dc00c1c9d83ed0d3393d0cf5b8c1e8f2"

    livecheck do
      url :url
      strategy :github_latest
    end
  end

  url "https://github.com/inderdhir/DatWeatherDoe/releases/download/#{version}/DatWeatherDoe-#{version}.dmg"
  name "DatWeatherDoe"
  desc "Menu bar weather app"
  homepage "https://github.com/inderdhir/DatWeatherDoe"

  app "DatWeatherDoe.app"

  zap trash: "~/Library/Preferences/com.inderdhir.DatWeatherDoe.plist"
end
