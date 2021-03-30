cask "mochi" do
  version "1.9.7"
  sha256 "a06c2da42a2d2cc2528b9ac4fda929d011b7cee1ed6bb01033b3553f5249fc3c"

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
