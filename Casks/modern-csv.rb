cask "modern-csv" do
  version "1.3.9"
  sha256 "d4d32972fe5593cf29173f7e84fde4a0bf15dfb91b17cef2df807aa3d436b84f"

  url "https://www.moderncsv.com/release/ModernCSV-Mac-v#{version}.dmg"
  appcast "https://www.moderncsv.com/latest-version/"
  name "Modern CSV"
  desc "CSV editor"
  homepage "https://www.moderncsv.com/"

  app "Modern CSV.app"

  zap trash: "~/Library/Application Support/Modern CSV"
end
