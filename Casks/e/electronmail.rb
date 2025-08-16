cask "electronmail" do
  arch arm: "arm64", intel: "x64"

  version "5.3.2"
  sha256 arm:   "ae36440fa666e49f26a87ffc40415103a180c4aa35861ba795d9e8489d9907a2",
         intel: "fba2eb8270d4994c49305ef8727d454dc0e6b76da2d7776126800576275c2383"

  url "https://github.com/vladimiry/ElectronMail/releases/download/v#{version}/electron-mail-#{version}-mac-#{arch}.dmg"
  name "ElectronMail"
  desc "Unofficial ProtonMail Desktop App"
  homepage "https://github.com/vladimiry/ElectronMail"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :big_sur"

  app "electron-mail.app"

  zap trash: [
    "~/Library/Logs/ElectronMail",
    "~/Library/Preferences/github.comvladimiryElectronMail.plist",
    "~/Library/Saved Application State/github.comvladimiryElectronMail.savedState",
  ]
end
