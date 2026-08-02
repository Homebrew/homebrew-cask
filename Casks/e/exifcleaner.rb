cask "exifcleaner" do
  arch arm: "-arm64"

  version "4.0.1"
  sha256 arm:   "3bf251e84cc879df264ad012a2a0c7682bdc16312d49441ecb0316917d0616ad",
         intel: "a1976df1538dbc461cd26dc18bf0e3cc0f5b3b28ad62200d21964e2942cf088f"

  url "https://github.com/szTheory/exifcleaner/releases/download/v#{version}/ExifCleaner-#{version}#{arch}.dmg",
      verified: "github.com/szTheory/exifcleaner/"
  name "ExifCleaner"
  desc "Metadata cleaner"
  homepage "https://exifcleaner.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :big_sur

  app "ExifCleaner.app"

  zap trash: [
    "~/Library/Application Support/ExifCleaner",
    "~/Library/Saved Application State/com.exifcleaner.savedState",
  ]
end
