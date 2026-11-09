cask "modern-csv" do
  version "2.4.5"
  sha256 "bed9ae4794b9d5b0592522bccb62fbbc42ce2bba9dd2bee9d85b84344cab745c"

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
