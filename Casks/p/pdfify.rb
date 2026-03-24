cask "pdfify" do
  version "4.4,44000"
  sha256 "dbc988d8ff81b0ab5cb944792d256c7589305dacf7aa8fbf2b68f22d5c7cce0f"

  url "https://pdfify.app/get/cask/download/macos/PDFify-#{version.csv.first}-#{version.csv.second}.zip"
  name "PDFify"
  desc "Create searchable and smaller PDF"
  homepage "https://pdfify.app/"

  livecheck do
    url "https://pdfify.app/updater-macos"
    strategy :sparkle
  end

  app "PDFify.app"

  zap trash: [
    "~/Library/Application Support/de.holtwick.mac.homebrew.PDFify",
    "~/Library/Caches/de.holtwick.mac.homebrew.PDFify",
    "~/Library/Logs/PDFify",
    "~/Library/Preferences/de.holtwick.mac.homebrew.PDFify.plist",
  ]
end
