cask "modern-csv" do
  version "1.3.36"
  sha256 "26fd595b38b32aa2c6fc7575886d79a01c640f90130f0c7e0b0e1e72c9d58c1b"

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
