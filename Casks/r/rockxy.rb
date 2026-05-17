cask "rockxy" do
  version "0.19.0,28"
  sha256 "47e61989895ec2155816ad52602ddb7428241a668af6792caa99274cb56479af"

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

  zap trash: [
    "~/Library/Application Support/com.amunx.rockxy",
    "~/Library/Application Support/com.amunx.rockxy.community",
    "~/Library/Preferences/com.amunx.rockxy.community.plist",
  ]
end
