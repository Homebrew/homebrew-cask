cask "chicken" do
  version "2.2b3"
  sha256 "78f05c20e6584d8eb46a30c0f9eb3e90f4e583a0f2d78ad5810370fadec0f323"

  url "https://github.com/boecko/chicken/releases/download/v#{version}/Chicken_#{version}.dmg"
  appcast "https://github.com/boecko/chicken/releases.atom"
  name "Chicken"
  homepage "https://github.com/boecko/chicken"

  app "Chicken.app"

  zap trash: "~/Library/Preferences/net.sourceforge.chicken.plist"
end
