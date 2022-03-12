cask "protonmail-bridge" do
  version "2.1.1"
  sha256 "8fbf70a80a77450177d9677545266b846b605f95cea5b20e55c4be8e7cd3d155"

  url "https://github.com/ProtonMail/proton-bridge/releases/download/v#{version}/Bridge-Installer.dmg",
      verified: "github.com/ProtonMail/proton-bridge/"
  name "ProtonMail Bridge"
  desc "Bridges ProtonMail to email clients supporting IMAP and SMTP protocols"
  homepage "https://protonmail.com/bridge/"

  livecheck do
    url "https://protonmail.com/download/current_version_darwin.json"
    regex(/"Version"\s*:\s*"(\d+(?:\.\d+)+)"/i)
  end

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
