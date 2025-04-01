cask "proton-mail-bridge" do
  version "3.19.0"
  sha256 "1f509ae11d49ce961d5cd2c05d11d162ca3fbea8e2867b3643ec2dbf900ccd0a"

  url "https://github.com/ProtonMail/proton-bridge/releases/download/v#{version}/Bridge-Installer.dmg",
      verified: "github.com/ProtonMail/proton-bridge/"
  name "Proton Mail Bridge"
  desc "Bridges Proton Mail to email clients supporting IMAP and SMTP protocols"
  homepage "https://proton.me/mail/bridge"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Proton Mail Bridge.app"

  uninstall launchctl: "Proton Mail Bridge",
            quit:      "com.protonmail.bridge"

  zap trash: [
    "~/Library/Application Support/protonmail",
    "~/Library/Caches/Proton AG/Proton Mail Bridge",
    "~/Library/Caches/protonmail",
  ]
end
