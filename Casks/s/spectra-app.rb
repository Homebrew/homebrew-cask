cask "spectra-app" do
  arch arm: "aarch64", intel: "x64"

  version "3.0.0"
  sha256 arm:   "ac751081de41f86ff3493e826f64fc1acc7b60180c9c7ef90cace72aa23af267",
         intel: "312dab0a2678d66caac3a69339157b7687e34cea8a10ff7b8080bef9e7265890"

  url "https://github.com/kaochenlong/spectra-app/releases/download/v#{version}/Spectra_#{version}_#{arch}.dmg"
  name "Spectra"
  desc "OpenSpec document management desktop app"
  homepage "https://spectra.5xcamp.us/"

  auto_updates true
  depends_on :macos

  app "Spectra.app"

  zap trash: [
    "~/Library/Application Support/app.spectra.dev",
    "~/Library/Caches/app.spectra.dev",
    "~/Library/Preferences/app.spectra.dev.plist",
    "~/Library/Saved Application State/app.spectra.dev.savedState",
  ]
end
