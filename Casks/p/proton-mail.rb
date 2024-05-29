cask "proton-mail" do
  arch arm: "arm64", intel: "x64"

  version "1.0.3"
  sha256 arm:   "c691cfec43b6876209e8cca8e35b89cb5d20805027341128bcaf35c07234540e",
         intel: "b042e8f30820f7ef8bdbf7a74d7f35bf948234bd6b31d9fa533cc11d388b96aa"

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
