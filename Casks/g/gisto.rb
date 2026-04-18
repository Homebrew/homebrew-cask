cask "gisto" do
  arch arm: "aarch64", intel: "x64"

  version "2.9.0"
  sha256 arm:   "f3bb55be8ffcba590125ce0b25cfe8bf66a58fc1a319874505ffea6f0ef14288",
         intel: "5a8a715ec39fe277eff292dfa265c729a02aa735ed59f8c66c8894657befd454"

  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto_#{version}_#{arch}.dmg",
      verified: "github.com/Gisto/Gisto/"
  name "Gisto"
  desc "Snippets management desktop application"
  homepage "https://www.gisto.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "Gisto.app"

  zap trash: [
    "~/Library/Application Support/Gisto",
    "~/Library/Caches/com.gistoapp.gisto2",
    "~/Library/Logs/Gisto",
    "~/Library/Preferences/com.gistoapp.gisto2.helper.plist",
    "~/Library/Preferences/com.gistoapp.gisto2.plist",
    "~/Library/Saved Application State/com.gistoapp.gisto2.savedState",
  ]
end
