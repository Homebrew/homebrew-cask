cask "font-pixel-code" do
  version "2.2"
  sha256 "528128a720941a84cb006b1c21f7695f7d8035a09e5cb1226c387d4c141c4b32"

  url "https://github.com/qwerasd205/PixelCode/releases/download/v#{version}/otf.zip",
      verified: "github.com/qwerasd205/PixelCode/"
  name "Pixel Code"
  homepage "https://qwerasd205.github.io/PixelCode/"

  font "otf/PixelCode.otf"
  font "otf/PixelCode-Black-Italic.otf"
  font "otf/PixelCode-Black.otf"
  font "otf/PixelCode-Bold-Italic.otf"
  font "otf/PixelCode-Bold.otf"
  font "otf/PixelCode-DemiBold-Italic.otf"
  font "otf/PixelCode-DemiBold.otf"
  font "otf/PixelCode-ExtraBlack-Italic.otf"
  font "otf/PixelCode-ExtraBlack.otf"
  font "otf/PixelCode-ExtraBold-Italic.otf"
  font "otf/PixelCode-ExtraBold.otf"
  font "otf/PixelCode-ExtraLight-Italic.otf"
  font "otf/PixelCode-ExtraLight.otf"
  font "otf/PixelCode-Italic.otf"
  font "otf/PixelCode-Light-Italic.otf"
  font "otf/PixelCode-Light.otf"
  font "otf/PixelCode-Medium-Italic.otf"
  font "otf/PixelCode-Medium.otf"
  font "otf/PixelCode-Thin-Italic.otf"
  font "otf/PixelCode-Thin.otf"

  # No zap stanza required
end
