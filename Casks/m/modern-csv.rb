cask "modern-csv" do
  version "2.0.7"
  sha256 "735a787808fa9e49e860b703bfe9e3919d59ccdb503ac79c95efaf98945d872f"

  url "https://www.moderncsv.com/release/ModernCSV-Mac-v#{version}.dmg"
  name "Modern CSV"
  desc "CSV editor"
  homepage "https://www.moderncsv.com/"

  livecheck do
    url "https://www.moderncsv.com/download/"
    regex(/href=.*?Mac[._-]?v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Modern CSV.app"

  zap trash: [
    "~/Library/Application Support/Modern CSV",
    "~/Library/Saved Application State/net.galliumdigital.Modern-CSV.savedState",
  ]
end
