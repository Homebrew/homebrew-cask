cask "modern-csv" do
  version "1.3.31"
  sha256 "7dbdad2fb8aa6944ad78b77959155e04c4e913093b9fa1c3212cac7388fe9692"

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
