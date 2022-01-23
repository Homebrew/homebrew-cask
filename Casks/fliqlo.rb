cask "fliqlo" do
  version "1.8.4"
  sha256 "1d7b3d82d8f8e73bece717cb12e6e939ab2267e5654a65a6f368fb2d35a270c1"

  url "https://fliqlo.com/download/Fliqlo%20#{version}.dmg",
      referer: "https://fliqlo.com/#about"
  name "Fliqlo"
  desc "Flip clock screensaver"
  homepage "https://fliqlo.com/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/Fliqlo%20v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  screen_saver "Fliqlo.saver"

  zap trash: "/Library/Screen Savers/Fliqlo.saver"
end
