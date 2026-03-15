cask "spectra-app" do
  arch arm: "aarch64", intel: "x64"

  version "2.1.6"
  sha256 arm:   "bea053b21c92c84047f7699a55efbe5bd60ff870620d4fe4956685ca78c23be6",
         intel: "91f5deb1ed36cbc0d4a95bae05ead8fd29f3d3ce7c60d1d19456e4196a53d52e"

  url "https://github.com/kaochenlong/spectra-app/releases/download/v#{version}/Spectra_#{version}_#{arch}.dmg",
      verified: "github.com/kaochenlong/spectra-app/"
  name "Spectra"
  desc "OpenSpec document management desktop app"
  homepage "https://spectra.5xcamp.us/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Spectra.app"

  zap trash: [
    "~/Library/Application Support/app.spectra.dev",
    "~/Library/Caches/app.spectra.dev",
    "~/Library/Preferences/app.spectra.dev.plist",
    "~/Library/Saved Application State/app.spectra.dev.savedState",
  ]
end
