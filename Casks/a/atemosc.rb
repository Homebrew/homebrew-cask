cask "atemosc" do
  arch arm: "-arm64"

  version "5.0.2"
  sha256 arm:   "5ba6a5e441c3dbc5a6c7e69fc451634f7f32d8d1e12fa246d25d0019d1a8c729",
         intel: "babaefe1ca6ef925e64892d59e0add7534baa5d22d041855fad646e8f42934fb"

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
