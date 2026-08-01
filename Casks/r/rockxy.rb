cask "rockxy" do
  version "0.32.0,49"
  sha256 "f9a1f88b1a52ab53ffc88541e74052bf528a6f5d6969559f7e945611200a9578"

  url "https://github.com/RockxyApp/Rockxy/releases/download/v#{version.csv.first}/Rockxy-#{version.tr(",", "-")}.dmg",
      verified: "github.com/RockxyApp/Rockxy/"
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
