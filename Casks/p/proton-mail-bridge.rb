cask "proton-mail-bridge" do
  version "3.27.0"
  sha256 "44152e90108ae4280aafec86604b7871697bd514633c2afb911038f9ab50fe3e"

  url "https://github.com/ProtonMail/proton-bridge/releases/download/v#{version}/Bridge-Installer.dmg"
  name "Proton Mail Bridge"
  desc "Bridges Proton Mail to email clients supporting IMAP and SMTP protocols"
  homepage "https://proton.me/mail/bridge"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "Proton Mail Bridge.app"

  uninstall launchctl: "Proton Mail Bridge",
            quit:      "com.protonmail.bridge"

  zap trash: [
    "~/Library/Application Support/protonmail",
    "~/Library/Caches/Proton AG/Proton Mail Bridge",
    "~/Library/Caches/protonmail",
  ]
end
