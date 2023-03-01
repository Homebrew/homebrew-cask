cask "electronmail" do
  arch arm: "arm64", intel: "x64"

  version "5.1.4"
  sha256 arm:   "2307a0cdcdaa35b8c89173aac9805963bd346ea0c5643b071eed5df161d9288a",
         intel: "18631318ac01e7bf86bb5f43f95f12cbb60310cbed82a12bdded4fc92e497460"

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
