cask "atemosc" do
  arch arm: "-arm64"

  version "5.0.10"
  sha256 arm:   "fb975181c4a01544900ccf309de070fe7f4629a15553cb9114cd5044bc2bbacc",
         intel: "73da419eb1c9052ed92dfcfc0b76492a9b60b5df5590be3d9a247f76dc7a58bd"

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
