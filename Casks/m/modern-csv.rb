cask "modern-csv" do
  version "2.1.2"
  sha256 "a8f915c15a4e69bb569963bd86b9735e43615b11cfe6c858e4f6e06151eb41bd"

  url "https://www.moderncsv.com/release/ModernCSV-Mac-v#{version}.dmg"
  name "Modern CSV"
  desc "CSV editor"
  homepage "https://www.moderncsv.com/"

  livecheck do
    url "https://www.moderncsv.com/download-mac"
    strategy :header_match
  end

  depends_on macos: ">= :mojave"

  app "Modern CSV.app"

  zap trash: [
    "~/Library/Application Support/Modern CSV",
    "~/Library/Saved Application State/net.galliumdigital.Modern-CSV.savedState",
  ]
end
