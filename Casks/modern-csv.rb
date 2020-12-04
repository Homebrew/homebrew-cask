cask "modern-csv" do
  version "1.3.10"
  sha256 "b465215d7b66d698ad44518cadbd820c151d422d00324437d5061f36080d6d80"

  url "https://www.moderncsv.com/release/ModernCSV-Mac-v#{version}.dmg"
  appcast "https://www.moderncsv.com/latest-version/"
  name "Modern CSV"
  desc "CSV editor"
  homepage "https://www.moderncsv.com/"

  app "Modern CSV.app"

  zap trash: "~/Library/Application Support/Modern CSV"
end
