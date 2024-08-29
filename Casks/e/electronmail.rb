cask "electronmail" do
  arch arm: "arm64", intel: "x64"

  version "5.2.3"
  sha256 arm:   "25e461840b0d40f84271d00910adb58fc0038a8910a3f72a8e929189e9ccf244",
         intel: "d87a7e33298317c5e95380a239663cd1af09a2388f7121e39002406c2fd4fe18"

  url "https://github.com/vladimiry/ElectronMail/releases/download/v#{version}/electron-mail-#{version}-mac-#{arch}.dmg"
  name "ElectronMail"
  desc "Unofficial ProtonMail Desktop App"
  homepage "https://github.com/vladimiry/ElectronMail"

  depends_on macos: ">= :catalina"

  app "ElectronMail.app"

  zap trash: [
    "~/Library/Logs/ElectronMail",
    "~/Library/Preferences/github.comvladimiryElectronMail.plist",
    "~/Library/Saved Application State/github.comvladimiryElectronMail.savedState",
  ]
end
