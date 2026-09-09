cask "psysonic" do
  arch arm: "aarch64", intel: "x64"

  version "1.52.0"
  sha256 arm:   "048945387a139bdc8e8cc70bd25be6bd364ccb974880dfd93d6ad748107d4b28",
         intel: "9904de9637aefb1099a34e8ccc52a06d095ba90f2948b1abc2ee274e404a8324"

  url "https://github.com/Psysonic/psysonic/releases/download/app-v#{version}/Psysonic_#{version}_#{arch}.dmg"
  name "Psysonic"
  desc "Desktop client for Navidrome and other Subsonic-compatible servers"
  homepage "https://www.psysonic.de/"

  auto_updates true
  depends_on :macos

  app "Psysonic.app"

  uninstall quit: "dev.psysonic.player"

  zap trash: [
    "~/Library/Application Support/dev.psysonic.player",
    "~/Library/Caches/dev.psysonic.player",
    "~/Library/Preferences/dev.psysonic.player.plist",
    "~/Library/Saved Application State/dev.psysonic.player.savedState",
    "~/Library/WebKit/dev.psysonic.player",
  ]
end
