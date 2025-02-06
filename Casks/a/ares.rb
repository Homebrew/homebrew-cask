cask "ares" do
  version "142"
  sha256 "6933fcf0452398f13767a5eed253b11630faa163a8a3db08971c6c2808110126"

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
