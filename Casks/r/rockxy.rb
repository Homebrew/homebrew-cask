cask "rockxy" do
  version "0.39.0,60"
  sha256 "229b85dcb01dba18ade5304adba1923cf211bb5e70d74b50f3964a2cee9ade6b"

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
