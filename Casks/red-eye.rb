cask "red-eye" do
  version "1.1"
  sha256 "12dd416b0c9e7ef1f8ff49b1bb7adc7bc98d6135c233bfd5d832d3307ba08b72"

  url "https://www.hexedbits.com/downloads/redeye.zip"
  appcast "https://www.hexedbits.com/redeye/"
  name "Red Eye"
  homepage "https://www.hexedbits.com/redeye/"

  depends_on macos: ">= :mojave"

  app "Red Eye.app"
end
