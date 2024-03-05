cask "atemosc" do
  arch arm: "-arm64"

  version "5.0.14"
  sha256 arm:   "cc8a961d25b1925a2b0965fd57c59dfebe8aa1172cb55572715a43168deed194",
         intel: "6129597d32da564e11f6a56633a424e6fee42ee4e1a287ebe5eeb55f4bebf69e"

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
