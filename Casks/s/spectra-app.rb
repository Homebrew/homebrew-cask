cask "spectra-app" do
  arch arm: "aarch64", intel: "x64"

  version "2.1.0"
  sha256 arm:   "3bd53f8ce61587dfbdd1a192054e0340c42b458248fe5162e1d7b5da771cc8b0",
         intel: "2baa88fe73a9cb840d06503ae468ca3056a2971ce519b094df7b9fcbab022e6c"

  url "https://github.com/kaochenlong/spectra-app/releases/download/v#{version}/Spectra_#{version}_#{arch}.dmg"
  name "Spectra"
  desc "OpenSpec document management desktop app"
  homepage "https://github.com/kaochenlong/spectra-app"

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
