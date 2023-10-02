cask "electronmail" do
  arch arm: "arm64", intel: "x64"

  version "5.2.0"
  sha256 arm:   "5e7d1abfdc0d4e13cbc2256ce165b3864c762066465a97df08e489adb93c7906",
         intel: "c39914c11e2ddd6cf47fc683bd0b65489f9f126eff3f7fa31546766363d13672"

  url "https://github.com/vladimiry/ElectronMail/releases/download/v#{version}/electron-mail-#{version}-mac-#{arch}.dmg"
  name "ElectronMail"
  desc "Unofficial ProtonMail Desktop App"
  homepage "https://github.com/vladimiry/ElectronMail"

  depends_on macos: ">= :high_sierra"

  app "ElectronMail.app"

  zap trash: [
    "~/Library/Logs/ElectronMail",
    "~/Library/Preferences/github.comvladimiryElectronMail.plist",
    "~/Library/Saved Application State/github.comvladimiryElectronMail.savedState",
  ]
end
