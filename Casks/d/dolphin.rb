cask "dolphin" do
  version "2503"
  sha256 "1695393ed870e13ea040e27614cefb5cdc7d2fb20053e41c9255eb7ca0745403"

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
