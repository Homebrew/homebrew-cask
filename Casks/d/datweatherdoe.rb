cask "datweatherdoe" do
  on_monterey :or_older do
    version "3.3.0"
    sha256 "8f122fb410019c4065229b01bb3af9630eceef192f3bcb605ea679c7c9143f4a"

    livecheck do
      skip "Legacy version"
    end
  end
  on_ventura :or_newer do
    version "5.6.2"
    sha256 "584675744f74286eb03ff5e877c7f70a3764465ac8d59e49c21f3a279193e450"

    livecheck do
      url :url
      strategy :github_latest
    end
  end

  url "https://github.com/inderdhir/DatWeatherDoe/releases/download/#{version}/DatWeatherDoe-#{version}.dmg"
  name "DatWeatherDoe"
  desc "Menu bar weather app"
  homepage "https://github.com/inderdhir/DatWeatherDoe"

  depends_on :macos

  app "DatWeatherDoe.app"

  zap trash: "~/Library/Preferences/com.inderdhir.DatWeatherDoe.plist"
end
