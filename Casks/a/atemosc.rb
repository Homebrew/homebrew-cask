cask "atemosc" do
  arch arm: "-arm64"

  version "5.0.1"
  sha256 arm:   "0780b485b596b6ea150ce03f8033ee380eb7a841d91b0fe2c5965af4012a965d",
         intel: "10f83993684d708f4b9fb0d39a199b88103e79ba0c1c95fab1a6c33d1963b749"

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
