cask "electronmail" do
  arch arm: "arm64", intel: "x64"

  version "5.2.2"
  sha256 arm:   "ec4f2c7ceb3ebc65d94be6dc2a5f5bb2dc8bb15de1125735d642e20d16fafd8e",
         intel: "dfa234848f3bcb3752ca78cf142bf51a6216953922c122940558f9eadd319ecb"

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
