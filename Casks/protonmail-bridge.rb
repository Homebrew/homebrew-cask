cask "protonmail-bridge" do
  version "1.4.5"
  sha256 "1f29124b09de61051ed013cecae4491b49c00a031e1b79f14179a5abc7e9a784"

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
