cask "electronmail" do
  arch arm: "arm64", intel: "x64"

  version "5.3.6"
  sha256 arm:   "cfb8f95ab53517e897f140cb592e6c5cbc078e86cf2896452974dc1d3390fc4a",
         intel: "ee2d29ee6064cd589719d52b1d74eb0c319d232f35a766087a2e50b24f06e465"

  url "https://github.com/vladimiry/ElectronMail/releases/download/v#{version}/electron-mail-#{version}-mac-#{arch}.dmg"
  name "ElectronMail"
  desc "Unofficial ProtonMail Desktop App"
  homepage "https://github.com/vladimiry/ElectronMail"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :monterey"

  app "electron-mail.app"

  zap trash: [
    "~/Library/Logs/ElectronMail",
    "~/Library/Preferences/github.comvladimiryElectronMail.plist",
    "~/Library/Saved Application State/github.comvladimiryElectronMail.savedState",
  ]
end
