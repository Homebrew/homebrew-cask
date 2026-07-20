cask "ares-emulator" do
  version "148"
  sha256 "1ae232ab6de341210f171f51d84b311527eb1399060706589334a8a7de136bb0"

  url "https://github.com/ares-emulator/ares/releases/download/v#{version}/ares-macos-universal.zip",
      verified: "github.com/ares-emulator/ares/"
  name "ares"
  desc "Cross-platform, multi-system emulator, focusing on accuracy and preservation"
  homepage "https://ares-emu.net/"

  depends_on macos: :big_sur

  app "ares-v#{version}/ares.app"

  zap trash: [
    "~/Library/Application Support/ares",
    "~/Library/Preferences/dev.ares.ares.plist",
    "~/Library/Saved Application State/dev.ares.ares.savedState",
  ]
end
