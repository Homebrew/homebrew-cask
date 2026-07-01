cask "electronmail" do
  arch arm: "arm64", intel: "x64"

  version "5.3.8"
  sha256 arm:   "577d968b4a0253d74b7f3ab183739db1e8882d7ef03e2046373ecab86d2f9596",
         intel: "23552f14c49d03092a824867fa69011ac940f2ff954da8cefd96b4949e6e619f"

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
