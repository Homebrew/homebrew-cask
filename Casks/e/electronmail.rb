cask "electronmail" do
  arch arm: "arm64", intel: "x64"

  version "5.3.7"
  sha256 arm:   "ba507e765a7a64185c04988b63893e13fa045b2f57488b88cdde6b4f312af7ee",
         intel: "2db02a523df89bca92abcb10d71802423f7e31f247a050d132afbfc1a30ab733"

  url "https://github.com/vladimiry/ElectronMail/releases/download/v#{version}/electron-mail-#{version}-mac-#{arch}.dmg"
  name "ElectronMail"
  desc "Unofficial ProtonMail Desktop App"
  homepage "https://github.com/vladimiry/ElectronMail"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :monterey

  app "electron-mail.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/github.comvladimiryelectronmail.sfl*",
    "~/Library/Application Support/electron-mail",
    "~/Library/Logs/ElectronMail",
    "~/Library/Preferences/github.comvladimiryElectronMail.plist",
    "~/Library/Saved Application State/github.comvladimiryElectronMail.savedState",
  ]
end
