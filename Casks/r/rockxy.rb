cask "rockxy" do
  version "0.38.1,56"
  sha256 "05d0479269837f10d43f6fb6e91eaca8f2183810b06fe742e197216b8af5d09b"

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
