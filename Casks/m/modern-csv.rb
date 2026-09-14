cask "modern-csv" do
  version "2.4.4"
  sha256 "d8a266c48d799a16be15a121cf62f7190b46d7aefde967b81725492d9f252093"

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

  uninstall quit: "net.galliumdigital.Modern-CSV"

  zap trash: [
    "~/Library/Application Support/Modern CSV",
    "~/Library/Saved Application State/net.galliumdigital.Modern-CSV.savedState",
  ]
end
