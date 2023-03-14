cask "electronmail" do
  arch arm: "arm64", intel: "x64"

  version "5.1.6"
  sha256 arm:   "22d15ca00ac8d4df47a04a9332db321711514a80df4e0e05379115bdc1e038be",
         intel: "b5c12728d0ebeb11e6f241d783c03d86eba04efa214c9ecbbe497b08842c2f5d"

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
