cask "ares-emulator" do
  version "144"
  sha256 "ca7d6b9d7bc4a342c6b0dbfb85b6d1f30872321bc92906a41c3c4c744edb56fc"

  url "https://github.com/ares-emulator/ares/releases/download/v#{version}/ares-macos-universal.zip",
      verified: "github.com/ares-emulator/ares/"
  name "ares"
  desc "Cross-platform, multi-system emulator, focusing on accuracy and preservation"
  homepage "https://ares-emu.net/"

  depends_on macos: ">= :high_sierra"

  app "ares-v#{version}/ares.app"

  zap trash: [
    "~/Library/Application Support/ares",
    "~/Library/Saved Application State/dev.ares.ares.savedState",
  ]
end
