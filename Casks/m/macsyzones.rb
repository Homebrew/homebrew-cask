cask "macsyzones" do
  version "1.9.3"
  sha256 "85cb2bf6a4a785ded0ba5865abd906ba13933254935a94c6c89ba20c2254350d"

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
