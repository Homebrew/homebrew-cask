cask "macsyzones" do
  version "2.2.6"
  sha256 "2dc262e04c0e577d8669476cfeddcb44f7b17c55b409b997dbfa939f5f357f2c"

  url "https://github.com/rohanrhu/MacsyZones/releases/download/v#{version}/MacsyZones.zip",
      verified: "github.com/rohanrhu/MacsyZones/"
  name "MacsyZones"
  desc "Window management utility"
  homepage "https://macsyzones.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "MacsyZones.app"

  zap trash: [
    "~/Library/Application Support/MacsyZones",
    "~/Library/Logs/MacsyZones",
    "~/Library/Preferences/com.macsyzones.MacsyZones.plist",
  ]
end
