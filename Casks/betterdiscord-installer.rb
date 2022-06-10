cask "betterdiscord-installer" do
  version "1.1.1"
  sha256 "80810d4570eed463708a75cc88c74880330e22c61e4bd0d4db8c355aade31682"

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
