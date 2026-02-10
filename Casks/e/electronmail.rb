cask "electronmail" do
  arch arm: "arm64", intel: "x64"

  version "5.3.5"
  sha256 arm:   "e60ffa9dd383b8ad4e91e236f83c184d9a0376033efea318320ac584744f9c02",
         intel: "aa3a8d0ff1f99e0da01be96567568cda3bbc2131cf7cc5594f30dda8dd258675"

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
