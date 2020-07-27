cask "supersync" do
  version "7.0.9"
  sha256 "e4948c43dc9f6eebadea0cd1864d8b0f8bb63a5930c0d22b57de1cd7bd4a04b5"

  url "https://supersync.com/downloads/SuperSync_#{version}.dmg"
  appcast "https://supersync.com/downloads.php"
  name "SuperSync"
  homepage "https://supersync.com/"

  app "SuperSync.app"
end
