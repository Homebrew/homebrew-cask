cask "dolphin@beta" do
  version :latest
  sha256 :no_check

  url "https://dolphin-emu.org/download/" do |page|
    page[/href="([^"]+\.dmg)"/, 1]
  end
  name "Dolphin Beta"
  desc "Emulator to play GameCube and Wii games"
  homepage "https://dolphin-emu.org/"

  conflicts_with cask: [
    "dolphin",
    "dolphin-dev",
  ]
  depends_on macos: ">= :catalina"

  app "Dolphin.app"
  app "Dolphin Updater.app"

  zap trash: [
    "~/Library/Application Support/Dolphin",
    "~/Library/Preferences/org.dolphin-emu.dolphin.plist",
  ]
end
