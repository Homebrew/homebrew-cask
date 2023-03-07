cask "electronmail" do
  arch arm: "arm64", intel: "x64"

  version "5.1.5"
  sha256 arm:   "62d2cd974cacf5547660dba253460bf900d019ff23c37a6bdaffccf319d7377d",
         intel: "0e98b884f37f9bc7ec15aa40709b86354305320ed958ffaa7c227bbdb32f071e"

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
