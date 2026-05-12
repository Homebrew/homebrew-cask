cask "macsyzones" do
  version "3.0.1"
  sha256 "28df49f1d0f0c270a5e3ba9d2c750220943fc932ba1fc066aa1f814d1555c5e9"

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
  depends_on macos: :big_sur

  app "MacsyZones.app"

  zap trash: [
    "~/Library/Application Support/MacsyZones",
    "~/Library/Logs/MacsyZones",
    "~/Library/Preferences/com.macsyzones.MacsyZones.plist",
  ]
end
