cask "modern-csv" do
  version "2.4.3"
  sha256 "37b0dd253a9c390b20da15518c4b2cd423fdc0a5e1edbe2266950e5fcca84433"

  url "https://www.moderncsv.com/release/ModernCSV-Mac-v#{version}.dmg"
  name "Modern CSV"
  desc "CSV editor"
  homepage "https://www.moderncsv.com/"

  livecheck do
    url "https://www.moderncsv.com/download-mac"
    strategy :header_match
  end

  depends_on :macos

  app "Modern CSV.app"

  zap trash: [
    "~/Library/Application Support/Modern CSV",
    "~/Library/Saved Application State/net.galliumdigital.Modern-CSV.savedState",
  ]
end
