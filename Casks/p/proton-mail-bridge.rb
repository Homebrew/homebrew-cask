cask "proton-mail-bridge" do
  version "3.27.1"
  sha256 "91ef13aad7c6ddac00527e850350583ff88138b07fe46e72bbf0318a217bad4b"

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
