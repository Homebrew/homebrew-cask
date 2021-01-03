cask "modern-csv" do
  version "1.3.16"
  sha256 "ba0151293aaedda36631fab5821428ece6ceb45ba1310b18cb6040bbef590e60"

  url "https://www.moderncsv.com/release/ModernCSV-Mac-v#{version}.dmg"
  appcast "https://www.moderncsv.com/latest-version/"
  name "Modern CSV"
  desc "CSV editor"
  homepage "https://www.moderncsv.com/"

  app "Modern CSV.app"

  zap trash: "~/Library/Application Support/Modern CSV"
end
