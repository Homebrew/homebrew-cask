cask "modern-csv" do
  version "3.0"
  sha256 "b57c96abdacae389518858f0e20702ca735b95422f0cc8aa0278e976490a13ba"

  url "https://www.moderncsv.com/release/ModernCSV-Mac-v#{version}.dmg"
  name "Modern CSV"
  desc "CSV editor"
  homepage "https://www.moderncsv.com/"

  livecheck do
    url "https://www.moderncsv.com/download-mac"
    strategy :header_match
  end

  depends_on macos: :ventura

  app "Modern CSV.app"

  uninstall quit: "net.galliumdigital.Modern-CSV"

  zap trash: [
    "~/Library/Application Support/Modern CSV",
    "~/Library/Caches/Modern CSV",
    "~/Library/Preferences/Modern CSV",
    "~/Library/Saved Application State/net.galliumdigital.Modern-CSV.savedState",
  ]
end
