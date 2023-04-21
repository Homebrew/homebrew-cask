cask "electronmail" do
  arch arm: "arm64", intel: "x64"

  version "5.1.7"
  sha256 arm:   "46bf41ae63aa0e8230730901fa62b21eeaf121eedda3c870d5ae1b9117f6c5af",
         intel: "0cc2b50e60dd898031bc5b629eb6f454c5cdffa23f49aadb2743d9150dbea270"

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
