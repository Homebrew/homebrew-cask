cask "nimble-commander" do
  version "1.6.1,4088"
  sha256 "6e85a6821209af20fffcc8e4095bbe2df534742efcab440f016fcbffd97ba46f"

  url "https://magnumbytes.com/downloads/releases/nimble-commander-#{version.csv.first}(#{version.csv.second}).dmg"
  name "Nimble Commander"
  desc "Dual-pane file manager"
  homepage "https://magnumbytes.com/"

  livecheck do
    url "https://magnumbytes.com/downloads/releases/sparkle-nimble-commander.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Nimble Commander.app"

  zap trash: [
    "~/Library/Application Support/Nimble Commander",
    "~/Library/Preferences/info.filesmanager.Files.plist",
  ]
end
