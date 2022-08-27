cask "electronmail" do
  arch arm: "arm64", intel: "x64"

  version "5.1.0"
  sha256 arm:   "983e8d7ef24cc6efc32cc0606217522e23db399a8493f4bcd4dc3f2423a476a5",
         intel: "ae227cbc3716c5afea3c3a5d450f382120f5ad796502c91bfd131483a45796a2"

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
