cask "modern-csv" do
  version "1.3.21"
  sha256 "29b784a0bd765612b694b98bc733c06d93e8f5c26fc961eac8de4ef9a891cc45"

  url "https://www.moderncsv.com/release/ModernCSV-Mac-v#{version}.dmg"
  appcast "https://www.moderncsv.com/latest-version/"
  name "Modern CSV"
  desc "CSV editor"
  homepage "https://www.moderncsv.com/"

  app "Modern CSV.app"

  zap trash: "~/Library/Application Support/Modern CSV"
end
