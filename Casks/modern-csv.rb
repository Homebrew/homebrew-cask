cask "modern-csv" do
  version "1.3.4"
  sha256 "b6bb1c6550cea551f7fb0e4d3d65521a55577460522dfb2bc464958ceb354c1e"

  url "https://www.moderncsv.com/release/ModernCSV-Mac-v#{version}.dmg"
  appcast "https://www.moderncsv.com/latest-version/"
  name "Modern CSV"
  desc "CSV editor"
  homepage "https://www.moderncsv.com/"

  app "Modern CSV.app"

  zap trash: "~/Library/Application Support/Modern CSV"
end
