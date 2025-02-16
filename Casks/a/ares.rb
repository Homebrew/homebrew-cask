cask "ares" do
  version "143"
  sha256 "116b24b94d1ed4af28900b681d202b5843358d67f49d0ff97f4f9dbd238abe53"

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
