cask "spectra-app" do
  arch arm: "aarch64", intel: "x64"

  version "2.2.2"
  sha256 arm:   "8e603b5486ae0fc60f89ec0d4f9c05aa0e714095f91413ccd8e6d60df12eec58",
         intel: "d007e706c75870d2b947b6599d9eb9381f7331f8283132c7e83074c75647d1ea"

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
