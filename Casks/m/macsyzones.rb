cask "macsyzones" do
  version "2.2.7"
  sha256 "bb4d7dfffd8bb6923f2150e696fb103b4082afffe99f414fe2315e635002d7bb"

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
