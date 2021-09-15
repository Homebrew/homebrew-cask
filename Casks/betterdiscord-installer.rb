cask "betterdiscord-installer" do
  version "1.0.0-hotfix"
  sha256 "d9c499f810292504d0638db04ca6f7f0c114f09739d479a0201c775a22205c7b"

  url "https://github.com/BetterDiscord/Installer/releases/download/v#{version}/BetterDiscord-Mac.zip",
      verified: "github.com/BetterDiscord/Installer/"
  name "betterdiscord"
  desc "Installer for BetterDiscord"
  homepage "https://betterdiscord.app/"

  app "BetterDiscord.app"

  zap trash: [
    "~/Library/Application Support/BetterDiscord",
    "~/Library/Application Support/BetterDiscord Installer",
    "~/Library/Preferences/app.betterdiscord.installer.plist",
    "~/Library/Saved Application State/app.betterdiscord.installer.savedState",
  ]
end
