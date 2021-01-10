cask "mochi" do
  version "1.8.0"
  sha256 "69dd5a68ef9d48c97a675ee30a2d9b15fef8b1f91ddd82c5aae032bf514fd590"

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
