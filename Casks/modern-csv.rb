cask "modern-csv" do
  version "1.3"
  sha256 "3803503571e1e82f386ff5bef20972d9f99779f540e222c2b88328f86aa35f5f"

  url "https://www.moderncsv.com/release/ModernCSV-Mac-v#{version}.dmg"
  appcast 'https://www.moderncsv.com/latest-version/'
  name "Modern CSV"
  desc "CSV editor"
  homepage "https://www.moderncsv.com/"

  app "Modern CSV.app"

  zap trash: ['~/Library/Application Support/Modern CSV',]
end
