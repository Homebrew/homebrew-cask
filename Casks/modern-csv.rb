cask "modern-csv" do
  version "1.3.1"
  sha256 "21a05ea946c4510c7fa5eea1f19ddc936af31cc6b12ecb3993a61cbb53da8bf7"

  url "https://www.moderncsv.com/release/ModernCSV-Mac-v#{version}.dmg"
  appcast "https://www.moderncsv.com/latest-version/"
  name "Modern CSV"
  desc "CSV editor"
  homepage "https://www.moderncsv.com/"

  app "Modern CSV.app"

  zap trash: "~/Library/Application Support/Modern CSV"
end
