cask "atemosc" do
  arch arm: "-arm64"

  version "5.0.9"
  sha256 arm:   "705f6f032027e27400198a37036e90fdc5e203caeac820fe6a0c76bf4b3b869b",
         intel: "a2d7aadfce03126ce1b4bee73ae011e01587ab6b1fb43ef5e50871d2499a7961"

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
