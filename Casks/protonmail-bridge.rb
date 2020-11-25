cask "protonmail-bridge" do
  version "1.5.2"
  sha256 "2981cf0ba8d70632c6996122f33c669f043c381f1857dfc353c010c81925db8e"

  url "https://protonmail.com/download/Bridge-Installer.dmg"
  appcast "https://protonmail.com/download/current_version_darwin.json"
  name "ProtonMail Bridge"
  desc "Bridges ProtonMail to email clients supporting IMAP and SMTP protocols"
  homepage "https://protonmail.com/bridge/"

  auto_updates true

  app "ProtonMail Bridge.app"

  uninstall launchctl: "ProtonMail Bridge",
            quit:      "com.protonmail.bridge"

  zap trash: [
    "~/Library/Application Support/protonmail",
    "~/Library/Caches/protonmail",
    "~/Library/Caches/ProtonMail Bridge",
  ]
end
