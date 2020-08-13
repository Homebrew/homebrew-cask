cask "protonmail-bridge" do
  version "1.3.3"
  sha256 "8ea6c68f25fda80ddba5915f9281150c4f6b4a50d2891cb938ad6937b8a7f495"

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
