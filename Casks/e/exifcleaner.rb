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

  caveats <<~EOS
    ExifCleaner is unsigned. To open it on macOS 14 (Sonoma) and earlier,
    right-click (or Control-click) ExifCleaner, choose Open, then click Open
    in the dialog.

    On macOS 15 (Sequoia) and later, first double-click ExifCleaner and allow
    macOS to block it. Then open System Settings > Privacy & Security and
    click Open Anyway next to the ExifCleaner message.
  EOS
end
