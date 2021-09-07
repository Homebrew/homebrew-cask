cask "electronmail" do
  version "4.12.7"
  sha256 "42a99b4b8773ab4b508dcd739066e22a6f2aa661850a9b2574981c1dd07c7144"

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
