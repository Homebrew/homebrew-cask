cask "exifcleaner" do
  arch arm: "-arm64"

  version "4.0.0"
  sha256 arm:   "f8837c155fe3cd826ef9f82b87d3936780bbafbcfc2b1902cc2a594a26037c1d",
         intel: "307ec159d9faa41cc4d7c45523130f92821a2ccf30d9b3faf2a35ae10db34666"

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
