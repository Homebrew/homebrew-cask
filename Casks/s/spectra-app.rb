cask "spectra-app" do
  arch arm: "aarch64", intel: "x64"

  version "2.2.1"
  sha256 arm:   "67511870aedaec2b054d63baef7cda2b33335099077a2b44883f16c76f38b9e9",
         intel: "20f0136ba2b8e6a672a37298fe97be5ea3d828a2e788fc62a7573c9e94bae34c"

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
