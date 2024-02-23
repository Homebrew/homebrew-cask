cask "atemosc" do
  arch arm: "-arm64"

  version "5.0.11"
  sha256 arm:   "2bd33a4abd7bb94e439aa5fa08c03fdba7242deb6fc20af8785d8c68c72af600",
         intel: "5320b41d65c3d0c7541e8c65d93d4e5187ee2f2196b6ca6e4ae7ea9c45a06e6a"

  url "https://atemosc.com/download/atemOSC-#{version}#{arch}.dmg"
  name "atemOSC"
  desc "Control BMD ATEM video switchers with OSC"
  homepage "https://www.atemosc.com/"

  livecheck do
    url "https://www.atemosc.com/download/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true # Requires a license key to enable
  depends_on macos: ">= :high_sierra"

  app "atemOSC.app"

  zap trash: [
    "~/Library/Application Support/atemOSC",
    "~/Library/Logs/atemOSC",
    "~/Library/Preferences/dev.steffey.atemOSC.plist",
    "~/Library/Saved Application State/dev.steffey.atemOSC.savedState",
  ]
end
