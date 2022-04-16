cask "modern-csv" do
  version "1.3.35"
  sha256 "089b2926387cb0642302792319f72408a84188b48855527b393224e42f1d2fa5"

  url "https://www.moderncsv.com/release/ModernCSV-Mac-v#{version}.dmg"
  name "Modern CSV"
  desc "CSV editor"
  homepage "https://www.moderncsv.com/"

  livecheck do
    url "https://www.moderncsv.com/latest-version/"
    regex(/Modern\s*CSV\s*v?(\d+(?:\.\d+)+)/i)
  end

  app "Modern CSV.app"

  zap trash: "~/Library/Application Support/Modern CSV"
end
