cask "rocks-n-diamonds" do
  version "4.3.1.1"
  sha256 "ae4ef684cffe5a49adf3fc4d8343591ba0e9538183cc7d1e3cbd4909192636e5"

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
