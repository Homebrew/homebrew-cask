cask "rocks-n-diamonds" do
  version "4.3.0.2"
  sha256 "9166e69872c83561fc3d1e4025e17cc151c6ad2ebbd083505ee680f7259763a7"

  url "https://www.artsoft.org/RELEASES/macosx/rocksndiamonds/rocksndiamonds-#{version}.dmg"
  name "Rocks'n'Diamonds"
  desc "Arcade-style game"
  homepage "https://www.artsoft.org/rocksndiamonds/"

  livecheck do
    url "https://www.artsoft.org/RELEASES/macosx/rocksndiamonds/"
    regex(/href=.*?rocksndiamonds[._-]?v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Rocks'n'Diamonds.app"
end
