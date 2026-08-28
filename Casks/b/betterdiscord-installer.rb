cask "betterdiscord-installer" do
  version "2.0.0"
  sha256 "7acd4d8d1408ec2100de7de2a2c19103874e127f9e995bcb46fa06dc809fc5fd"

  url "https://github.com/BetterDiscord/Installer/releases/download/v#{version}/BetterDiscord-Installer-Mac.zip",
      verified: "github.com/BetterDiscord/Installer/"
  name "BetterDiscord"
  desc "Installer for BetterDiscord"
  homepage "https://betterdiscord.app/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :monterey
  depends_on cask: "discord"

  app "BetterDiscord Installer.app"

  zap trash: [
    "~/Library/Application Support/BetterDiscord Installer",
    "~/Library/Application Support/BetterDiscord",
    "~/Library/Preferences/app.betterdiscord.installer.plist",
    "~/Library/Saved Application State/app.betterdiscord.installer.savedState",
  ]
end
