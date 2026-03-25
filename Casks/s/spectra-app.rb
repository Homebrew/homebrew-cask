cask "spectra-app" do
  arch arm: "aarch64", intel: "x64"

  version "2.2.0"
  sha256 arm:   "617fc3ae856830b6acf9624ce29521496770672f5311f5c2c3578ddca4d915ca",
         intel: "bdcffe446def27d1f7eace85445dff07ba0a3910ca4ffc4d07f0490d2d5bbd75"

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
