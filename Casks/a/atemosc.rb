cask "atemosc" do
  arch arm: "-arm64"

  version "5.0.4"
  sha256 arm:   "78d7d74c9c3ef031ed7e1aa9a872535390aac6bba8bea0f675283947c1d9fcd9",
         intel: "43ac40dcf54ad8451224139b168ca56f2bd3013a69c8c521f9bfc80d0be7b6fe"

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
