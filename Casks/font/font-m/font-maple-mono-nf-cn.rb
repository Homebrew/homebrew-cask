cask "font-maple-mono-nf-cn" do
  version "7.0"
  sha256 "c7b66739b0e418c4789cfa4c6c17d17c4e8ce28d7dad9800a50786ebd3fa4d98"

  url "https://github.com/subframe7536/Maple-font/releases/download/v#{version}/MapleMono-NF-CN-unhinted.zip"
  name "Maple Mono NF CN"
  homepage "https://github.com/subframe7536/Maple-font"

  livecheck do
    cask "font-maple-mono"
  end

  font "MapleMono-NF-CN-Bold.ttf"
  font "MapleMono-NF-CN-BoldItalic.ttf"
  font "MapleMono-NF-CN-ExtraBold.ttf"
  font "MapleMono-NF-CN-ExtraBoldItalic.ttf"
  font "MapleMono-NF-CN-ExtraLight.ttf"
  font "MapleMono-NF-CN-ExtraLightItalic.ttf"
  font "MapleMono-NF-CN-Italic.ttf"
  font "MapleMono-NF-CN-Light.ttf"
  font "MapleMono-NF-CN-LightItalic.ttf"
  font "MapleMono-NF-CN-Medium.ttf"
  font "MapleMono-NF-CN-MediumItalic.ttf"
  font "MapleMono-NF-CN-Regular.ttf"
  font "MapleMono-NF-CN-SemiBold.ttf"
  font "MapleMono-NF-CN-SemiBoldItalic.ttf"
  font "MapleMono-NF-CN-Thin.ttf"
  font "MapleMono-NF-CN-ThinItalic.ttf"

  # No zap stanza required
end
