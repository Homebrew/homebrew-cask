cask "rocks-n-diamonds" do
  version "4.3.0.3"
  sha256 "6336f507f4b1d0085283e1029e69660df315ebb816c955bd1e6cb9b6ada37fbc"

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
