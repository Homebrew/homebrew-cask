cask "modern-csv" do
  version "1.3.30"
  sha256 "addb935c3ed07d9a33b526f6ac90f1557248a648b8c8b5dabcf6546497eb28b9"

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
