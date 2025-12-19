cask "nimble-commander" do
  version "1.8.0,4282"
  sha256 "b827bbed9a9c3243c1a80e07abb2504d55b3e33fcfc3c3e4df62828727553471"

  url "https://magnumbytes.com/downloads/releases/nimble-commander-#{version.csv.first}(#{version.csv.second}).dmg"
  name "Nimble Commander"
  desc "Dual-pane file manager"
  homepage "https://magnumbytes.com/"

  livecheck do
    url "https://magnumbytes.com/downloads/releases/sparkle-nimble-commander.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Nimble Commander.app"

  zap trash: [
    "~/Library/Application Support/Nimble Commander",
    "~/Library/Preferences/info.filesmanager.Files.plist",
  ]
end
