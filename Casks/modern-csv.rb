cask "modern-csv" do
  version "1.3.27"
  sha256 "12d405aa8b2352eac81f15b95f5b7d47cfaead4af6670aae26408ce58cff828c"

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
