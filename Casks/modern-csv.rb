cask "modern-csv" do
  version "1.3.17"
  sha256 "1a934a27bde698485a82bb3d5bda1edb16106b8934983f9eb3a16d97487ef4e7"

  url "https://www.moderncsv.com/release/ModernCSV-Mac-v#{version}.dmg"
  appcast "https://www.moderncsv.com/latest-version/"
  name "Modern CSV"
  desc "CSV editor"
  homepage "https://www.moderncsv.com/"

  app "Modern CSV.app"

  zap trash: "~/Library/Application Support/Modern CSV"
end
