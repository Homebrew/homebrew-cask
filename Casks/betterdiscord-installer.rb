cask "betterdiscord-installer" do
  version "1.2.0"
  sha256 "fc660b631528230582e94d3c551a11d406715ecada2e8737043af6d9f24136b5"

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
