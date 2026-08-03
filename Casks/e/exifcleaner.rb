cask "exifcleaner" do
  arch arm: "-arm64"

  version "4.1.0"
  sha256 arm:   "fac68f2a9fd1162b6a5e240ab3cf57a946a1cc0bb5264ce46d2fe53409a18f41",
         intel: "95b486d87c6ff3f6bd36000303e9b5da52529c916c55ce5ec7c9b06a7c06310c"

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
