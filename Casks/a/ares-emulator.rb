cask "ares-emulator" do
  version "145"
  sha256 "201be11a7215215a0959dcb9755ed668a9816723045b7c0fadea4169fe01f5d5"

  url "https://github.com/ares-emulator/ares/releases/download/v#{version}/ares-macos-universal.zip",
      verified: "github.com/ares-emulator/ares/"
  name "ares"
  desc "Cross-platform, multi-system emulator, focusing on accuracy and preservation"
  homepage "https://ares-emu.net/"

  depends_on macos: ">= :catalina"

  app "ares-v#{version}/ares.app"

  zap trash: [
    "~/Library/Application Support/ares",
    "~/Library/Preferences/dev.ares.ares.plist",
    "~/Library/Saved Application State/dev.ares.ares.savedState",
  ]
end
