cask "ares-emulator" do
  version "147"
  sha256 "9d8376b5dde4869bc0613efe3a544471e120b6e4f0b02ebe0c34295b034df147"

  url "https://github.com/ares-emulator/ares/releases/download/v#{version}/ares-macos-universal.zip",
      verified: "github.com/ares-emulator/ares/"
  name "ares"
  desc "Cross-platform, multi-system emulator, focusing on accuracy and preservation"
  homepage "https://ares-emu.net/"

  depends_on macos: ">= :big_sur"

  app "ares-v#{version}/ares.app"

  zap trash: [
    "~/Library/Application Support/ares",
    "~/Library/Preferences/dev.ares.ares.plist",
    "~/Library/Saved Application State/dev.ares.ares.savedState",
  ]
end
