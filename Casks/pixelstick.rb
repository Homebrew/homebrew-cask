cask "pixelstick" do
  version "2.16.2"
  sha256 :no_check

  url "https://plumamazing.com/bin/pixelstick/pixelstick.zip"
  appcast "https://plumamazing.com/product/pixelstick/changelog/appcast/"
  name "PixelStick"
  desc "Tool for measuring distances, angles and colors on the screen"
  homepage "https://plumamazing.com/product/pixelstick"

  app "PixelStick.app"
end
