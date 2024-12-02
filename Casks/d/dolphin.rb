cask "dolphin" do
  version "2412"
  sha256 "e03db800237cba6b2688b8a90bfcb4243dbd0fdc627ac3fa2664d1f10d7d20ec"

  url "https://dl.dolphin-emu.org/releases/#{version}/dolphin-#{version}-universal.dmg"
  name "Dolphin"
  desc "Emulator to play GameCube and Wii games"
  homepage "https://dolphin-emu.org/"

  livecheck do
    url "https://dolphin-emu.org/download/"
    regex(/href=.*?dolphin[._-]v?(\d+(?:\.\d+)*[a-z]?)(?:[._-]universal)?\.dmg/i)
  end

  conflicts_with cask: [
    "dolphin@beta",
    "dolphin@dev",
  ]
  depends_on macos: ">= :catalina"

  app "Dolphin.app"

  zap trash: [
    "~/Library/Application Support/Dolphin",
    "~/Library/Preferences/org.dolphin-emu.dolphin.plist",
  ]
end
