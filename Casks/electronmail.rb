cask "electronmail" do
  arch arm: "arm64", intel: "x64"

  version "5.1.3"
  sha256 arm:   "8d5a541551dac7b60ae94202ff08c34deaab34a5a29298bfb39fc81fd787bb86",
         intel: "647244e4b8bbf49bed35a2ecaea4fa2c739cb1cadcf66cb3cc475a633196256b"

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
