cask "modern-csv" do
  version "1.3.15"
  sha256 "56e86e95bac8fddb81ba3bdb1c2c8bb276b78a8c1f0b0ddd279da69456ab5bcd"

  url "https://www.moderncsv.com/release/ModernCSV-Mac-v#{version}.dmg"
  appcast "https://www.moderncsv.com/latest-version/"
  name "Modern CSV"
  desc "CSV editor"
  homepage "https://www.moderncsv.com/"

  app "Modern CSV.app"

  zap trash: "~/Library/Application Support/Modern CSV"
end
