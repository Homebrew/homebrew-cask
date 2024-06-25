cask "proton-mail" do
  arch arm: "arm64", intel: "x64"

  version "1.0.4"
  sha256 arm:   "72169fad0b27f2d72ab8ce0601ad3ae86ac3831cb1c21bb96fae72c7abb7214a",
         intel: "a302e5e27722f6b18ae7bf1713b551a4d0c68b3e9cb3ef872cf54f297ad32f09"

  url "https://github.com/ProtonMail/inbox-desktop/releases/download/v#{version}/Proton.Mail-#{version}-#{arch}.dmg",
      verified: "github.com/ProtonMail/inbox-desktop/"
  name "Proton Mail"
  desc "Client for Proton Mail and Proton Calendar"
  homepage "https://proton.me/mail"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Proton Mail.app"

  zap trash: [
    "~/Library/Application Support/Proton Mail",
    "~/Library/Caches/ch.protonmail.desktop",
    "~/Library/Caches/ch.protonmail.desktop.ShipIt",
    "~/Library/HTTPStorages/ch.protonmail.desktop",
    "~/Library/Logs/Proton Mail",
    "~/Library/Preferences/ch.protonmail.desktop.plist",
    "~/Library/Saved Application State/ch.protonmail.desktop.savedState",
  ]
end
