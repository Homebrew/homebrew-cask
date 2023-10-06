cask "electronmail" do
  arch arm: "arm64", intel: "x64"

  version "5.2.1"
  sha256 arm:   "e29d086233c4df581b726a5fa965a7223f0425f9d94b41ccbdeb05a69fbd68e7",
         intel: "24541d9dfb6028ca42d3a40107f8810ef663546faff1113946c06f3e3bbbb918"

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
