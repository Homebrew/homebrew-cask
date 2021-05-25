cask "modern-csv" do
  version "1.3.29"
  sha256 "3f9d8d5ff6f1655c97f8cf921a169a904eec1b682588fe5b6f0076170c9fc397"

  url "https://www.moderncsv.com/release/ModernCSV-Mac-v#{version}.dmg"
  name "Modern CSV"
  desc "CSV editor"
  homepage "https://www.moderncsv.com/"

  livecheck do
    url "https://www.moderncsv.com/latest-version/"
    strategy :page_match
    regex(/Modern\s*CSV\s*v?(\d+(?:\.\d+)*)/i)
  end

  app "Modern CSV.app"

  zap trash: "~/Library/Application Support/Modern CSV"
end
