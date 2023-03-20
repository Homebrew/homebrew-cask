cask "betterdiscord-installer" do
  version "1.2.1"
  sha256 "23b9f276ec5b24a0085bceec313db3bc4bf5741d2c563a580a6dd4c6d2fab866"

  url "https://github.com/BetterDiscord/Installer/releases/download/v#{version}/BetterDiscord-Mac.zip",
      verified: "github.com/BetterDiscord/Installer/"
  name "BetterDiscord"
  desc "Installer for BetterDiscord"
  homepage "https://betterdiscord.app/"

  depends_on cask: "discord"

  app "BetterDiscord.app"

  zap trash: [
    "~/Library/Application Support/BetterDiscord",
    "~/Library/Application Support/BetterDiscord Installer",
    "~/Library/Preferences/app.betterdiscord.installer.plist",
    "~/Library/Saved Application State/app.betterdiscord.installer.savedState",
  ]
end
