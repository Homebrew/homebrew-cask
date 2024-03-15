cask "proton-mail" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "8db84204140f3407c44ad5f8d883b56112b69f99c17c349387b83eeee8c16668",
         intel: "014ca5e05222adcb3ed6553c1da2c74a458cea12ef08f6efb52c8f2bb8eb66cc"

  url "https://github.com/ProtonMail/inbox-desktop/releases/download/v#{version}/Proton-Mail-#{version}-#{arch}.dmg",
      verified: "github.com/ProtonMail/inbox-desktop/"
  name "Proton Mail"
  desc "Client for Proton Mail"
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
