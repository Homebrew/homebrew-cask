cask "proton-mail" do
  arch arm: "arm64", intel: "x64"

  version "1.0.5"
  sha256 arm:   "4a366e7fc63db684eec8bd1e511c2f51fd6fd6f98aea1c6093a27d9d79549165",
         intel: "4a366e7fc63db684eec8bd1e511c2f51fd6fd6f98aea1c6093a27d9d79549165"

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
