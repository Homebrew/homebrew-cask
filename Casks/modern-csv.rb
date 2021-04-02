cask "modern-csv" do
  version "1.3.23"
  sha256 "bdd88d974d317daadc8fb129de8f059c5ae66da57628be87c0bfe636e507c058"

  url "https://www.moderncsv.com/release/ModernCSV-Mac-v#{version}.dmg"
  appcast "https://www.moderncsv.com/latest-version/"
  name "Modern CSV"
  desc "CSV editor"
  homepage "https://www.moderncsv.com/"

  app "Modern CSV.app"

  zap trash: "~/Library/Application Support/Modern CSV"
end
