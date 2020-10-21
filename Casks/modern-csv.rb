cask "modern-csv" do
  version "1.3.3"
  sha256 "69a6133cdcc4ef15b7d7c1ec089a0216ed3c1e41f1c6b9ea236bd5a5a52cad45"

  url "https://www.moderncsv.com/release/ModernCSV-Mac-v#{version}.dmg"
  appcast "https://www.moderncsv.com/latest-version/"
  name "Modern CSV"
  desc "CSV editor"
  homepage "https://www.moderncsv.com/"

  app "Modern CSV.app"

  zap trash: "~/Library/Application Support/Modern CSV"
end
