cask "electronmail" do
  arch arm: "arm64", intel: "x64"

  version "5.3.0"
  sha256 arm:   "29d6aa0687dba05ed557d711eb551a67b6da4a4288855d37e39c57548564b1bd",
         intel: "10c4aec7838aa0842ab25329c7309a692efca228a3c828f916188baacd01bec5"

  url "https://github.com/vladimiry/ElectronMail/releases/download/v#{version}/electron-mail-#{version}-mac-#{arch}.dmg"
  name "ElectronMail"
  desc "Unofficial ProtonMail Desktop App"
  homepage "https://github.com/vladimiry/ElectronMail"

  depends_on macos: ">= :big_sur"

  app "ElectronMail.app"

  zap trash: [
    "~/Library/Logs/ElectronMail",
    "~/Library/Preferences/github.comvladimiryElectronMail.plist",
    "~/Library/Saved Application State/github.comvladimiryElectronMail.savedState",
  ]
end
