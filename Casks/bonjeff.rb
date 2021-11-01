cask "bonjeff" do
  version "2.0.0"
  sha256 "d6793dffe0c4ebcd962bb8a1802d5c092b24effdd18ec27655eeb3d20b7953fc"

  url "https://github.com/lapcat/Bonjeff/releases/download/v#{version}/Bonjeff#{version}.zip"
  name "Bonjeff"
  desc "Shows a live display of the Bonjour services published on your network"
  homepage "https://github.com/lapcat/Bonjeff"

  depends_on macos: ">= :sierra"

  app "Bonjeff.app"

  zap trash: [
    "~/Library/Application Scripts/com.lapcatsoftware.bonjeff",
    "~/Library/Containers/com.lapcatsoftware.bonjeff",
  ]
end
