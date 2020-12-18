cask "exifcleaner" do
  version "3.4.0"
  sha256 "b21c078ce724afdaa3e8604070b2893b26997d5785381a83cfbcbfef87a62518"

  url "https://github.com/szTheory/exifcleaner/releases/download/v#{version}/ExifCleaner-#{version}.dmg",
      verified: "github.com/szTheory/exifcleaner/"
  appcast "https://github.com/szTheory/exifcleaner/releases.atom"
  name "ExifCleaner"
  desc "Metadata cleaner"
  homepage "https://exifcleaner.com/"

  app "ExifCleaner.app"

  zap trash: [
    "~/Library/Application Support/ExifCleaner",
    "~/Library/Saved Application State/com.exifcleaner.savedState",
  ]
end
