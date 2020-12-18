cask "modern-csv" do
  version "1.3.14"
  sha256 "ca11a37b5dd68e6eb6d6e30520515cc438b5e912b497e1178d0c907cfcbf411e"

  url "https://www.moderncsv.com/release/ModernCSV-Mac-v#{version}.dmg"
  appcast "https://www.moderncsv.com/latest-version/"
  name "Modern CSV"
  desc "CSV editor"
  homepage "https://www.moderncsv.com/"

  app "Modern CSV.app"

  zap trash: "~/Library/Application Support/Modern CSV"
end
