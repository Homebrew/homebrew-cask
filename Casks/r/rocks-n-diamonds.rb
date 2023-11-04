cask "rocks-n-diamonds" do
  version "4.3.2.1"
  sha256 "6499fe6382eec6506cc625b0f372a29918640cfb6ebdca3ee3e6b97d83ff458c"

  url "https://www.artsoft.org/RELEASES/mac/rocksndiamonds/rocksndiamonds-#{version}.dmg"
  name "Rocks'n'Diamonds"
  desc "Arcade-style game"
  homepage "https://www.artsoft.org/rocksndiamonds/"

  livecheck do
    url "https://www.artsoft.org/RELEASES/mac/rocksndiamonds/"
    regex(/href=.*?rocksndiamonds[._-]?v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Rocks'n'Diamonds.app"

  zap trash: [
    "~/Documents/Rocks'n'Diamonds",
    "~/Library/Saved Application State/org.artsoft.rocksndiamonds.savedState",
  ]
end
