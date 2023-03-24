cask "dolphin" do
  version "5.0"
  sha256 "1e7127cf9b110c5d7feabc0d05f620bad31d0f47a1d16e1f46e2e402d0ec233c"

  url "https://dl-mirror.dolphin-emu.org/#{version}/dolphin-#{version}.dmg"
  name "Dolphin"
  desc "Emulator to play GameCube and Wii games"
  homepage "https://dolphin-emu.org/"

  livecheck do
    url "https://github.com/dolphin-emu/dolphin"
    strategy :git
  end

  conflicts_with cask: [
    "homebrew/cask-versions/dolphin-beta",
    "homebrew/cask-versions/dolphin-dev",
  ]
  depends_on macos: ">= :catalina"

  app "Dolphin.app"

  zap trash: [
    "~/Library/Application Support/Dolphin",
    "~/Library/Preferences/org.dolphin-emu.dolphin.plist",
  ]
end
