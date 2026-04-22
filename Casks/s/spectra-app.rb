cask "spectra-app" do
  arch arm: "aarch64", intel: "x64"

  version "2.2.5"
  sha256 arm:   "f2aa749b314de33bb92c9863c686f4f49091c0ef7602a7008eeb8445e31ab14d",
         intel: "ea02bb9ad69060b2cade962bbc6a03f6950b3019244fc16e380c5659e57fd187"

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
