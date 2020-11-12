cask "protonmail-bridge" do
  version "1.5.0"
  sha256 "7cb8802b0f4f68b199c26f1023ebb34ffa97be2f6f366adb9070b94c157530c5"

  url "https://protonmail.com/download/Bridge-Installer.dmg"
  appcast "https://protonmail.com/download/current_version_darwin.json"
  name "ProtonMail Bridge"
  desc "Bridges ProtonMail to email clients supporting IMAP and SMTP protocols"
  homepage "https://protonmail.com/bridge/"

  app "ProtonMail Bridge.app"

  uninstall launchctl: "ProtonMail Bridge",
            quit:      "com.protonmail.bridge"

  zap trash: [
    "~/Library/Application Support/protonmail",
    "~/Library/Caches/protonmail",
    "~/Library/Caches/ProtonMail Bridge",
  ]
end
