cask "supersync" do
  version "7.0.9"
  sha256 "e4948c43dc9f6eebadea0cd1864d8b0f8bb63a5930c0d22b57de1cd7bd4a04b5"

  url "https://supersync.com/downloads/SuperSync_#{version}.dmg"
  name "SuperSync"
  homepage "https://supersync.com/"

  livecheck do
    url "https://supersync.com/downloads.php"
    regex(%r{href=.*?/SuperSync_(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "SuperSync.app"
end
