cask "spectra-app" do
  arch arm: "aarch64", intel: "x64"

  version "2.2.3"
  sha256 arm:   "e4d3eb91fb9e62ec46ba09e757b5d3c69de660ee2f6fb1957eaba1ac5624cd35",
         intel: "cbad05916f5e80416387a08a3ed1835525597269ed87300f83b9b8cbe920b82a"

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
