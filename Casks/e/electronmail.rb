cask "electronmail" do
  arch arm: "arm64", intel: "x64"

  version "5.3.4"
  sha256 arm:   "12f54ee55b3b57970ac3a2fc4290b48cfea9b2b4108b71757c28f7cd1d764471",
         intel: "dfbac24e6a7792569e9d438cddc437123c41d7325a4e5d5f0830293395e6687a"

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
