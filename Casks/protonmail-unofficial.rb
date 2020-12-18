cask "protonmail-unofficial" do
  version "1.2.1"
  sha256 "012882c8ad6d564d96bdc9e172ee6c04a3a44ed81dc5db9c29dd033aa31cd46e"

  url "https://github.com/unofficial-protonmail-desktop/application/releases/download/v#{version}/Unofficial-desktop-client-for-ProtonMail-#{version}.dmg"
  appcast "https://github.com/unofficial-protonmail-desktop/application/releases.atom"
  name "Protonmail Desktop"
  desc "Unofficial Electron wrapper for ProtonMail"
  homepage "https://github.com/unofficial-protonmail-desktop/application"

  app "Unofficial desktop client for ProtonMail.app"
end
