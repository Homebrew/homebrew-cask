cask "dolphin@dev" do
  version "2409-45"
  sha256 "17046a69f8cceda3a239f6b19e306545988a9c10e16429d355d648cfc2f8891a"

  url "https://dl.dolphin-emu.org/builds/d5/33/dolphin-master-#{version}-universal.dmg"
  name "Dolphin Dev"
  desc "Emulator to play GameCube and Wii games"
  homepage "https://dolphin-emu.org/"

  livecheck do
    url "https://dolphin-emu.org/download/list/master/1/"
    regex(/href=.*?dolphin[._-]master[._-]v?(\d+(?:[._-]\d+)+)-universal\.dmg/i)
  end

  conflicts_with cask: [
    "dolphin",
    "dolphin@beta",
  ]
  depends_on macos: ">= :catalina"

  app "Dolphin.app"

  zap trash: [
    "~/Library/Application Support/Dolphin",
    "~/Library/Preferences/org.dolphin-emu.dolphin.plist",
  ]
end
