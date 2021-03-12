cask "modern-csv" do
  version "1.3.22"
  sha256 "b3da4e7d2c4a2964c221fcbddc933c4e5056c697aa7becf36a18b38dcbeef9e9"

  url "https://www.moderncsv.com/release/ModernCSV-Mac-v#{version}.dmg"
  appcast "https://www.moderncsv.com/latest-version/"
  name "Modern CSV"
  desc "CSV editor"
  homepage "https://www.moderncsv.com/"

  app "Modern CSV.app"

  zap trash: "~/Library/Application Support/Modern CSV"
end
