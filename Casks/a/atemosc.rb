cask "atemosc" do
  arch arm: "-arm64"

  version "5.0.17"
  sha256 arm:   "6c80abd14332454355f98fa46c26d7d41e443b2425a58c73e1bb0926ddf651c1",
         intel: "a1e68b8de2249a829eca039015f720fec7a78efda846f9baf0f0ce5cc42d2f30"

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
