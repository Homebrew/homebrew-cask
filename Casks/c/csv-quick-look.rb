cask "csv-quick-look" do
  version "1.0.2"
  sha256 "4a2f8b1508a0730f9072c2a74b5555fb2589e0a90b1f72e01982901481b453e6"

  url "https://github.com/adamorad/csv-quick-look/releases/download/v#{version}/CSV.Quick.Look.zip"
  name "CSV Quick Look"
  desc "QuickLook extension for CSV and TSV files"
  homepage "https://github.com/adamorad/csv-quick-look"

  depends_on macos: ">= :monterey"

  app "CSV Quick Look.app"

  uninstall quit: "com.adammorad.csvquicklook"

  zap trash: "~/Library/Preferences/com.adammorad.csvquicklook.plist"
end
