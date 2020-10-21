cask "protonmail-bridge" do
  version "1.4.4"
  sha256 "11d40ad753e5bf63d40d0d2d0455865eb934c34adf68decd75154dee669d9fb8"

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
