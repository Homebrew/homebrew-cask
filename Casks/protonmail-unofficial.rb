cask "protonmail-unofficial" do
  version "1.1.0"
  sha256 "5d2426d60df6b6c14b9a7f0c704b1f622cc60960f389d0d7a56516bd44613846"

  url "https://github.com/protonmail-desktop/application/releases/download/v#{version}/protonmail-desktop-unofficial-#{version}.dmg"
  appcast "https://github.com/protonmail-desktop/application/releases.atom"
  name "Protonmail Desktop"
  desc "Unofficial Electron wrapper for ProtonMail"
  homepage "https://github.com/protonmail-desktop/application"

  app "Protonmail Desktop (unofficial).app"
end
