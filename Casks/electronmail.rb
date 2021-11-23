cask "electronmail" do
  version "4.13.0"
  sha256 "05c4d22acaff106acd3919131c80c53fa2e7850e303c9585af295b22a19afb5c"

  url "https://github.com/vladimiry/ElectronMail/releases/download/v#{version}/electron-mail-#{version}-mac-x64.dmg"
  name "ElectronMail"
  desc "Unofficial ProtonMail Desktop App"
  homepage "https://github.com/vladimiry/ElectronMail"

  app "ElectronMail.app"

  zap trash: [
    "~/Library/Logs/ElectronMail",
    "~/Library/Preferences/github.comvladimiryElectronMail.plist",
    "~/Library/Saved Application State/github.comvladimiryElectronMail.savedState",
  ]
end
