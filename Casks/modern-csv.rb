cask "modern-csv" do
  version "1.3.20"
  sha256 "fc6eac858ec870cce9ab31575297b295de65b258c1a2ae9cdb5f7d785b091370"

  url "https://www.moderncsv.com/release/ModernCSV-Mac-v#{version}.dmg"
  appcast "https://www.moderncsv.com/latest-version/"
  name "Modern CSV"
  desc "CSV editor"
  homepage "https://www.moderncsv.com/"

  app "Modern CSV.app"

  zap trash: "~/Library/Application Support/Modern CSV"
end
