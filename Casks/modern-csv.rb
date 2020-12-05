cask "modern-csv" do
  version "1.3.11"
  sha256 "d3ac7e675c84b1fbc60503cff2e905ce97e3738fbd61751e3f08df3cdb6025ea"

  url "https://www.moderncsv.com/release/ModernCSV-Mac-v#{version}.dmg"
  appcast "https://www.moderncsv.com/latest-version/"
  name "Modern CSV"
  desc "CSV editor"
  homepage "https://www.moderncsv.com/"

  app "Modern CSV.app"

  zap trash: "~/Library/Application Support/Modern CSV"
end
