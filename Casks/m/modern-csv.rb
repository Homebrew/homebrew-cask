cask "modern-csv" do
  version "2.0.8"
  sha256 "4ec1dc251fc7b370aa435ab4936a9e0484d674c69c2fa27ea59a8e475707f552"

  url "https://www.moderncsv.com/release/ModernCSV-Mac-v#{version}.dmg"
  name "Modern CSV"
  desc "CSV editor"
  homepage "https://www.moderncsv.com/"

  livecheck do
    url "https://www.moderncsv.com/download/"
    regex(/href=.*?Mac[._-]?v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Modern CSV.app"

  zap trash: [
    "~/Library/Application Support/Modern CSV",
    "~/Library/Saved Application State/net.galliumdigital.Modern-CSV.savedState",
  ]
end
