cask "protonmail-bridge" do
  version "2.1.3"
  sha256 "a23c55657f81da6cc2d3f7d7b5fa4e31e035e80f60c08b1d9aecdecce20b11ca"

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
