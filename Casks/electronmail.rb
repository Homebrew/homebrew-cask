cask "electronmail" do
  arch arm: "arm64", intel: "x64"

  version "5.1.1"
  sha256 arm:   "550d06c34c980e540e84e4ca55a67727b52ddc2f023b3e0681bcfbe64df997b0",
         intel: "79ed0143b54018b0a7914089ffc2156423d332f0287e26cd9b00d05b71fa27c2"

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
