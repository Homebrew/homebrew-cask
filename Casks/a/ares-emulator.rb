cask "ares-emulator" do
  version "146"
  sha256 "66e970aa28b2faf01c1305f3ff90ba655862756df7dc8ab587c8197c78c8ef62"

  url "https://github.com/ares-emulator/ares/releases/download/v#{version}/ares-macos-universal.zip",
      verified: "github.com/ares-emulator/ares/"
  name "ares"
  desc "Cross-platform, multi-system emulator, focusing on accuracy and preservation"
  homepage "https://ares-emu.net/"

  app "ares-v#{version}/ares.app"

  zap trash: [
    "~/Library/Application Support/ares",
    "~/Library/Preferences/dev.ares.ares.plist",
    "~/Library/Saved Application State/dev.ares.ares.savedState",
  ]
end
