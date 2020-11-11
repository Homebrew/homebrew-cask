cask "modern-csv" do
  version "1.3.7"
  sha256 "7008fea5d23b158a06c468d78748686cc73d2ff8d6f4994e686fa720f5549464"

  url "https://www.moderncsv.com/release/ModernCSV-Mac-v#{version}.dmg"
  appcast "https://www.moderncsv.com/latest-version/"
  name "Modern CSV"
  desc "CSV editor"
  homepage "https://www.moderncsv.com/"

  app "Modern CSV.app"

  zap trash: "~/Library/Application Support/Modern CSV"
end
