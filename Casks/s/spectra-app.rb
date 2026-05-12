cask "spectra-app" do
  arch arm: "aarch64", intel: "x64"

  version "2.3.0"
  sha256 arm:   "36d4c3bd4274cfc789c8d99a2d1729b2b6417adf0daec8c7d26a9ca6f40f538a",
         intel: "d1f959c640bf79106bc7149d66ba8c4c669c888b511d92bed19b4d7c551b3447"

  url "https://github.com/kaochenlong/spectra-app/releases/download/v#{version}/Spectra_#{version}_#{arch}.dmg",
      verified: "github.com/kaochenlong/spectra-app/"
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
