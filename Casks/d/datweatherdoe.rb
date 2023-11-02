cask "datweatherdoe" do
  on_catalina :or_older do
    version "2.2.0"
    sha256 "0e7c7a9a770f3f7e10a17610e4e8670f3c7050a872b1cb2947bfbbbfda94174f"

    livecheck do
      skip "Legacy version for Catalina and earlier"
    end
  end
  on_big_sur do
    version "3.3.0"
    sha256 "8f122fb410019c4065229b01bb3af9630eceef192f3bcb605ea679c7c9143f4a"

    livecheck do
      skip "Legacy version for Big Sur"
    end
  end
  on_monterey do
    version "3.3.0"
    sha256 "8f122fb410019c4065229b01bb3af9630eceef192f3bcb605ea679c7c9143f4a"

    livecheck do
      skip "Legacy version for Monterey"
    end
  end
  on_ventura :or_newer do
    version "4.1.0"
    sha256 "ffd8b0b416388ea54f3b5e9a7d49224736457c5ad9aff4ae2dab92ff06d4d3af"

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
