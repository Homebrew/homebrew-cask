cask "proton-mail" do
  arch arm: "arm64", intel: "x64"

  version "1.0.2"
  sha256 arm:   "e4c17499fc19b582d885210624c2dbab064f0726e19c5a6d2a706cac6df8ce67",
         intel: "cdf029256e48b55ea83b1e704874b55fb0f993c1ef3d165aa5fa572e3d313bd3"

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
