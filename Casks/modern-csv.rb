cask "modern-csv" do
  version "1.3.8"
  sha256 "3b739672cbde1c533ccb354a4974a8228e0bbe90c5d073c0964942ddd7e994a6"

  url "https://www.moderncsv.com/release/ModernCSV-Mac-v#{version}.dmg"
  appcast "https://www.moderncsv.com/latest-version/"
  name "Modern CSV"
  desc "CSV editor"
  homepage "https://www.moderncsv.com/"

  app "Modern CSV.app"

  zap trash: "~/Library/Application Support/Modern CSV"
end
