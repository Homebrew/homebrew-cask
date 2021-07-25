cask "modern-csv" do
  version "1.3.32"
  sha256 "2b3f5306445e0535862d77afe8c8541d7ededeccbc157eae26667ba16ccd2b70"

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
