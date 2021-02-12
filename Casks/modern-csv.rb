cask "modern-csv" do
  version "1.3.17"
  sha256 "69fecbdabbe2305efa59452371ad6660d67b8b7758fa8b5ebd99a97b80dacc61"

  url "https://www.moderncsv.com/release/ModernCSV-Mac-v#{version}.dmg"
  appcast "https://www.moderncsv.com/latest-version/"
  name "Modern CSV"
  desc "CSV editor"
  homepage "https://www.moderncsv.com/"

  app "Modern CSV.app"

  zap trash: "~/Library/Application Support/Modern CSV"
end
