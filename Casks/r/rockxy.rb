cask "rockxy" do
  version "0.38.4,59"
  sha256 "ac65aba1677e16c7f74717113658be4c69738af550bc25878b605cb181a76790"

  url "https://github.com/RockxyApp/Rockxy/releases/download/v#{version.csv.first}/Rockxy-#{version.tr(",", "-")}.dmg"
  name "Rockxy"
  desc "HTTP proxy"
  homepage "https://rockxy.io/"

  livecheck do
    url "https://raw.githubusercontent.com/RockxyApp/Rockxy/main/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Rockxy.app"

  uninstall launchctl: "com.amunx.rockxy.community.direct-proxy-watchdog.*",
            quit:      "com.amunx.rockxy.community"

  zap trash: [
    "~/Library/Application Support/com.amunx.rockxy",
    "~/Library/Application Support/com.amunx.rockxy.community",
    "~/Library/Caches/com.amunx.rockxy.community",
    "~/Library/HTTPStorages/com.amunx.rockxy.community",
    "~/Library/Preferences/com.amunx.rockxy.community.plist",
  ]
end
