cask "modern-csv" do
  version "1.3.24"
  sha256 "def8776d62c41bf231e89f7e9401633f66c10195209a6c13dd908997bc57b2f4"

  url "https://www.moderncsv.com/release/ModernCSV-Mac-v#{version}.dmg"
  appcast "https://www.moderncsv.com/latest-version/"
  name "Modern CSV"
  desc "CSV editor"
  homepage "https://www.moderncsv.com/"

  app "Modern CSV.app"

  zap trash: "~/Library/Application Support/Modern CSV"
end
