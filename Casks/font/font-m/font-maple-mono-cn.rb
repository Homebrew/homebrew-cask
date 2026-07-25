cask "font-maple-mono-cn" do
  version "7.9"
  sha256 "d41cb72721e99cfe4fbd1a7b0f182a013457de46aa612018f924dd024699d3b9"

  url "https://github.com/subframe7536/Maple-font/releases/download/v#{version}/MapleMono-CN-unhinted.zip",
      verified: "github.com/subframe7536/Maple-font/"
  name "Maple Mono CN"
  homepage "https://font.subf.dev/en/"

  livecheck do
    cask "font-maple-mono"
  end

  font "MapleMono-CN-Bold.ttf"
  font "MapleMono-CN-BoldItalic.ttf"
  font "MapleMono-CN-ExtraBold.ttf"
  font "MapleMono-CN-ExtraBoldItalic.ttf"
  font "MapleMono-CN-ExtraLight.ttf"
  font "MapleMono-CN-ExtraLightItalic.ttf"
  font "MapleMono-CN-Italic.ttf"
  font "MapleMono-CN-Light.ttf"
  font "MapleMono-CN-LightItalic.ttf"
  font "MapleMono-CN-Medium.ttf"
  font "MapleMono-CN-MediumItalic.ttf"
  font "MapleMono-CN-Regular.ttf"
  font "MapleMono-CN-SemiBold.ttf"
  font "MapleMono-CN-SemiBoldItalic.ttf"
  font "MapleMono-CN-Thin.ttf"
  font "MapleMono-CN-ThinItalic.ttf"

  # No zap stanza required
end
