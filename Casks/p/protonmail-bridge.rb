cask "protonmail-bridge" do
  version "3.7.1"
  sha256 :no_check

  url "https://proton.me/download/bridge/Bridge-Installer.dmg"
  name "Proton Mail Bridge"
  desc "Bridges Proton Mail to email clients supporting IMAP and SMTP protocols"
  homepage "https://proton.me/mail/bridge"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true

  app "Proton Mail Bridge.app"

  uninstall launchctl: "Proton Mail Bridge",
            quit:      "com.protonmail.bridge"

  zap trash: [
    "~/Library/Application Support/protonmail",
    "~/Library/Caches/protonmail",
    "~/Library/Caches/Proton AG/Proton Mail Bridge",
  ]
end
