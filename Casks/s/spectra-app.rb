cask "spectra-app" do
  arch arm: "aarch64", intel: "x64"

  version "2.1.8"
  sha256 arm:   "c258f7ac43ae6652993b54d9c6b5e91b938aba1a02acd2a118739502011c6403",
         intel: "d6afc4937bb2424bee548f181242bbfc23c694820ae0b14867e8dd9e135f54a7"

  url "https://github.com/kaochenlong/spectra-app/releases/download/v#{version}/Spectra_#{version}_#{arch}.dmg",
      verified: "github.com/kaochenlong/spectra-app/"
  name "Spectra"
  desc "OpenSpec document management desktop app"
  homepage "https://spectra.5xcamp.us/"

  auto_updates true

  app "Spectra.app"

  zap trash: [
    "~/Library/Application Support/app.spectra.dev",
    "~/Library/Caches/app.spectra.dev",
    "~/Library/Preferences/app.spectra.dev.plist",
    "~/Library/Saved Application State/app.spectra.dev.savedState",
  ]
end
