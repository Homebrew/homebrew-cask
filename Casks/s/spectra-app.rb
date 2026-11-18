cask "spectra-app" do
  arch arm: "aarch64", intel: "x64"

  version "3.1.0"
  sha256 arm:   "4dcafae67812d3f0cd7526f00960def776478c823ec174d2ef49420b8c2611b1",
         intel: "9c983405dd483c2a6c792dadca5293decf14a1d48c6d958a5fbe1cfd251c7ba9"

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
    "~/Library/WebKit/app.spectra.dev",
  ]
end
