cask "exifcleaner" do
  arch arm: "-arm64"

  version "4.2.0"
  sha256 arm:   "f42ddb013957deec192f77cf424cd96103480d3c05468f4eb93685f88caf667d",
         intel: "34157501759e02d456fff033a66f5e89c80bda10c4acc5e32bf7704782dbc855"

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

  depends_on macos: :monterey

  app "ExifCleaner.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.exifcleaner.sfl*",
    "~/Library/Application Support/ExifCleaner",
    "~/Library/Preferences/com.exifcleaner.plist",
    "~/Library/Saved Application State/com.exifcleaner.savedState",
  ]
end
