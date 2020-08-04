cask "protonmail-bridge" do
  version "1.2.8"
  sha256 "55bd2930461f0724f3ee2c1870b0c8470a9979ecd437f053fba81467c18fcbaa"

  url "https://protonmail.com/download/Bridge-Installer.dmg"
  appcast "https://protonmail.com/download/current_version_darwin.json"
  name "ProtonMail Bridge"
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
