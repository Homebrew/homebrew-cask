cask "dolphin@dev" do
  version :latest
  sha256 :no_check

  url "https://dolphin-emu.org/download/list/master/1/" do |page|
    page[/href="([^"]+\.dmg)"/, 1]
  end
  name "Dolphin Dev"
  desc "Emulator to play GameCube and Wii games"
  homepage "https://dolphin-emu.org/"

  conflicts_with cask: [
    "dolphin",
    "dolphin@beta",
  ]
  depends_on macos: ">= :catalina"

  app "Dolphin.app"
  app "Dolphin Updater.app"

  zap trash: [
    "~/Library/Application Support/Dolphin",
    "~/Library/Preferences/org.dolphin-emu.dolphin.plist",
  ]
end
