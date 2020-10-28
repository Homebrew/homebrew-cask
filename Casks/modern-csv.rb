cask "modern-csv" do
  version "1.3.5"
  sha256 "44538a20e4c85f403298552a1816449f7a65dca134583419bfe1e2e970f3c755"

  url "https://www.moderncsv.com/release/ModernCSV-Mac-v#{version}.dmg"
  appcast "https://www.moderncsv.com/latest-version/"
  name "Modern CSV"
  desc "CSV editor"
  homepage "https://www.moderncsv.com/"

  app "Modern CSV.app"

  zap trash: "~/Library/Application Support/Modern CSV"
end
