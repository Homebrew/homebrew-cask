cask "atemosc" do
  arch arm: "-arm64"

  version "5.0.15"
  sha256 arm:   "4e97ff8104a36a22ada4034c87c1f5bd61040b316c8ac76b4c16cfdc170e692f",
         intel: "ff9b72eafb552b141265d908ff4d4dc762d92d0878462bad0b7b93c87ecad8d4"

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
