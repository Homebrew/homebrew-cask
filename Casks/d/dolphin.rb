cask "dolphin" do
  version "2407"
  sha256 "bc9e4646c71f653874b2c17c0261475f0caaae8b50886300927c521c2843694c"

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
