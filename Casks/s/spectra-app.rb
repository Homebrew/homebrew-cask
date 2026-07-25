cask "spectra-app" do
  arch arm: "aarch64", intel: "x64"

  version "2.3.1"
  sha256 arm:   "ee2baee6a52705fafb6bd26144d1a445b2888f422d500483165a521d31dd8d2a",
         intel: "a044bc1eda0e7281b230e949ddc1c320599b7b005aedb8fd2c63899d38287922"

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
