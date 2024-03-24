cask "proton-mail" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1"
  sha256 arm:   "b3bdb8003bda8cd0348fbdc246aa86b252c90a4da0d1ecc0a2a0ba618a146c11",
         intel: "b07c2902d084787cf676074af38728f4fda36a0e088aaca576a4ba35c3a4a93f"

  url "https://github.com/ProtonMail/inbox-desktop/releases/download/v#{version}/Proton-Mail-#{version}-#{arch}.dmg",
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
