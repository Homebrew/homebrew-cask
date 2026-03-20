cask "spectra-app" do
  arch arm: "aarch64", intel: "x64"

  version "2.1.9"
  sha256 arm:   "76b07cbf7ff69f8b94223f37ccd28e4f38b2a7c2ae5b47db0144f409fd45c237",
         intel: "8ffb6263316dc06f19cfa0f91e200867d702640d47adf2a0d0b1ef3da4cd165a"

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
