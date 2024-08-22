cask "modern-csv" do
  version "2.1"
  sha256 "47a6038060941cb2758282fe1189c5a1c8fd123a9285ebed806318f3df95a755"

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
