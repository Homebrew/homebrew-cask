cask "font-maple-mono-cn" do
  version "7.0-beta36"
  sha256 "08002c0b1a40964b8dcf81a9fe41f35258fa3a148e55d46a4c7266031d2ce666"

  url "https://github.com/subframe7536/Maple-font/releases/download/v#{version}/MapleMono-CN-unhinted.zip"
  name "Maple Mono CN"
  homepage "https://github.com/subframe7536/Maple-font"

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
