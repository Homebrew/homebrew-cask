cask "modern-csv" do
  version "2.0.6"
  sha256 "cb046c39df1b7231308a800929e891076fa1da0a26b02647a0027b32e06eef2a"

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
