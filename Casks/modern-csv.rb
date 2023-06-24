cask "modern-csv" do
  version "2.0.1"
  sha256 "6b17093935e3d4da4e5efe2d704b94af11b255803f4bb945539b7b1bd7540eb3"

  url "https://t6a3m9g6.rocketcdn.me/release/ModernCSV-Mac-v#{version}.dmg",
      verified: "t6a3m9g6.rocketcdn.me/"
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
