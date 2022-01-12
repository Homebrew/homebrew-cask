cask "nimble-commander" do
  version "1.3.0,3711"
  sha256 "440367eb055532f3aaeffdc322d4b5663e835994536f868a5f7bcfd8758faefb"

  url "https://magnumbytes.com/downloads/releases/nimble-commander-#{version.csv.first}(#{version.csv.second}).dmg"
  name "Nimble Commander"
  desc "Dual-pane file manager"
  homepage "https://magnumbytes.com/"

  livecheck do
    url "https://magnumbytes.com/downloads/releases/sparkle-nimble-commander.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :catalina"

  app "Nimble Commander.app"

  zap trash: [
    "~/Library/Application Support/Nimble Commander",
    "~/Library/Preferences/info.filesmanager.Files.plist",
  ]
end
