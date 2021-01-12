cask "mochi" do
  version "1.8.1"
  sha256 "191c77b8263eaf68a0c4eb720d1c32aabfe21aee4961e5f1807b9f9de0c9ef3c"

  url "https://mochi.cards/releases/Mochi-#{version}.dmg"
  name "Mochi"
  homepage "https://mochi.cards/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/Mochi-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "Mochi.app"
end
