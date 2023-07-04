cask "electronmail" do
  arch arm: "arm64", intel: "x64"

  version "5.1.8"
  sha256 arm:   "73b00f611afa334c4b27460cda475cc2ccd8a143417f2fa4fb71d01fa944bf39",
         intel: "c40bbf9b07118b548061091eddc91e8dc4b32807f95281aefb69f130d606d9bf"

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
