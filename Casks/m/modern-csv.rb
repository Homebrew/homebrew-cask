cask "modern-csv" do
  version "2.2.3"
  sha256 "740fc6004022fcff229ca2302ce965028847f45f59aa14c60bb33dcf9fa5a765"

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
