cask "nimble-commander" do
  version "1.9.0,4329"
  sha256 "7b3ea7628a8c14834e5bedd0eece9ecc4bed35666b14ed3751eec59f04e4a578"

  url "https://magnumbytes.com/downloads/releases/nimble-commander-#{version.csv.first}(#{version.csv.second}).dmg"
  name "Nimble Commander"
  desc "Dual-pane file manager"
  homepage "https://magnumbytes.com/"

  livecheck do
    url "https://magnumbytes.com/downloads/releases/sparkle-nimble-commander.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :monterey

  app "Nimble Commander.app"

  zap trash: [
    "~/Library/Application Support/Nimble Commander",
    "~/Library/Preferences/info.filesmanager.Files.plist",
  ]
end
