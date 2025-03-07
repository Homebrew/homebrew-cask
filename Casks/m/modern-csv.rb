cask "modern-csv" do
  version "2.2.1"
  sha256 "353352e7cdde2fa93e86ea33f4ac8e7801ef9444d9c98839a150295f542e4f55"

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
