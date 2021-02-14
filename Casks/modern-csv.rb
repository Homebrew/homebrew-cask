cask "modern-csv" do
  version "1.3.19"
  sha256 "a9a6fd295bc40d1341c5dc92803e2b60dec7e4aeb06f3c094bb28938cb387de5"

  url "https://www.moderncsv.com/release/ModernCSV-Mac-v#{version}.dmg"
  appcast "https://www.moderncsv.com/latest-version/"
  name "Modern CSV"
  desc "CSV editor"
  homepage "https://www.moderncsv.com/"

  app "Modern CSV.app"

  zap trash: "~/Library/Application Support/Modern CSV"
end
