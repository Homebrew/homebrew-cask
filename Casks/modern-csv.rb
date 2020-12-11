cask "modern-csv" do
  version "1.3.13"
  sha256 "092dbd5b1180ee86c1186952d70115cebb84487f28f74a6f450887ba2d33265d"

  url "https://www.moderncsv.com/release/ModernCSV-Mac-v#{version}.dmg"
  appcast "https://www.moderncsv.com/latest-version/"
  name "Modern CSV"
  desc "CSV editor"
  homepage "https://www.moderncsv.com/"

  app "Modern CSV.app"

  zap trash: "~/Library/Application Support/Modern CSV"
end
