cask "proton-mail" do
  arch arm: "arm64", intel: "x64"

  version "1.0.6"
  sha256 arm:   "4206e235c99f432e6b8d654bc925b4a1b6b91ea91e2fc15c239ad539c21bc499",
         intel: "4206e235c99f432e6b8d654bc925b4a1b6b91ea91e2fc15c239ad539c21bc499"

  url "https://github.com/ProtonMail/inbox-desktop/releases/download/#{version}/Proton.Mail-#{version}-#{arch}.dmg",
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
