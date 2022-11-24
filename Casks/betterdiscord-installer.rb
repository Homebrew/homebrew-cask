cask "betterdiscord-installer" do
  version "1.1.2"
  sha256 "1778faa23fcddcedc8d07def60498085bb9717378fb91df1b3e2caade4f3c286"

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
