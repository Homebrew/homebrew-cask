cask "rocks-n-diamonds" do
  version "4.3.1.0"
  sha256 "fe17956fcf49884dbd2698ac28d9580e35cc950e09459f8ecd063d71e1e25d25"

  url "https://www.artsoft.org/RELEASES/macosx/rocksndiamonds/rocksndiamonds-#{version}.dmg"
  name "Rocks'n'Diamonds"
  desc "Arcade-style game"
  homepage "https://www.artsoft.org/rocksndiamonds/"

  livecheck do
    url "https://www.artsoft.org/RELEASES/macosx/rocksndiamonds/"
    regex(/href=.*?rocksndiamonds[._-]?v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Rocks'n'Diamonds.app"

  zap trash: [
    "~/Documents/Rocks'n'Diamonds",
    "~/Library/Saved Application State/org.artsoft.rocksndiamonds.savedState",
  ]
end
