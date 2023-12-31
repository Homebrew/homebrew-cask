cask "sonarr" do
  arch arm: "arm64", intel: "x64"

  version "4.0.0.741"
  sha256 arm:   "054d7128a728d03b053c6db8a0d481203602c524c4e50295cbd9e10e98a04571",
         intel: "b161f4ad5a4c1dbe247f8d6216dfb516fec2c13ea70a58261038b07195e7fcbc"

  url "https://download.sonarr.tv/v#{version.major}/main/#{version}/Sonarr.main.#{version}.osx-#{arch}-app.zip"
  name "Sonarr"
  desc "PVR for Usenet and BitTorrent users"
  homepage "https://sonarr.tv/"

  livecheck do
    url "https://download.sonarr.tv/v4/main/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Sonarr.app"

  zap trash: "~/.config/Sonarr"
end
