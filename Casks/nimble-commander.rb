cask "nimble-commander" do
  version "1.4.0,3883"
  sha256 "775e9bc8f0869da22bdcf546a743a2349b25c7439244a9e782c4b757025e64f0"

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
