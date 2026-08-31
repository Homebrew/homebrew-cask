cask "rockxy" do
  version "0.37.0,54"
  sha256 "e217a1210cd3ef1b56b06bd6aa088ed7437eb9239e10160d0136ee71e7dc2708"

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

  uninstall launchctl: "com.amunx.rockxy.community.direct-proxy-watchdog",
            quit:      "com.amunx.rockxy.community"

  zap trash: [
    "~/Library/Application Support/com.amunx.rockxy",
    "~/Library/Application Support/com.amunx.rockxy.community",
    "~/Library/Preferences/com.amunx.rockxy.community.plist",
  ]
end
