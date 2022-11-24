cask "electronmail" do
  arch arm: "arm64", intel: "x64"

  version "5.1.2"
  sha256 arm:   "5c5f34a0c4bf535d9846023dea4d2585a280f18cdbe70f583b7d2af613c351f9",
         intel: "70a3ce7e68f838917896a4b86e3582e2acff6916271c6a02108ac34de0c3705b"

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
