cask "pixelstick" do
  version "2.16.2"
  sha256 "b1b19315cdd3632d503789df6da1842f5ce3fbf7b0da9e2da63503af27f8934c"

  url "https://plumamazing.com/bin/pixelstick/pixelstick.zip"
  appcast "https://plumamazing.com/product/pixelstick/changelog/appcast/"
  name "PixelStick"
  desc "Tool for measuring distances, angles and colors on the screen"
  homepage "https://plumamazing.com/product/pixelstick"

  app "PixelStick.app"
end
