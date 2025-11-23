cask "electronmail" do
  arch arm: "arm64", intel: "x64"

  version "5.3.3"
  sha256 arm:   "c083d417f9ff8b1b82cc2fdab544fb8ce726fd0e3cf39a64abbc6e4efc9bd872",
         intel: "fb36eb8719e3bae3ea6d638bbb2e854ad0e1d41fe9d4d7f884033ac75f92bcd1"

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
