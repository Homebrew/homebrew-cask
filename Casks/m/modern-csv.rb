cask "modern-csv" do
  version "2.2"
  sha256 "60df4ff7c503588e91aed9f3de31bc2ca203c9ef43d16e9890861808a8b01262"

  url "https://www.moderncsv.com/release/ModernCSV-Mac-v#{version}.dmg"
  name "Modern CSV"
  desc "CSV editor"
  homepage "https://www.moderncsv.com/"

  livecheck do
    url "https://www.moderncsv.com/download-mac"
    strategy :header_match
  end

  depends_on macos: ">= :mojave"

  app "Modern CSV.app"

  zap trash: [
    "~/Library/Application Support/Modern CSV",
    "~/Library/Saved Application State/net.galliumdigital.Modern-CSV.savedState",
  ]
end
