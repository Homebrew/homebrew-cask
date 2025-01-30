cask "font-maple-mono-nf" do
  version "7.0-beta36"
  sha256 "d4dc9980d35b1af1511f42a953ab14b16f5843d8dbe9a74564fa2d91a4796857"

  url "https://github.com/subframe7536/Maple-font/releases/download/v#{version}/MapleMono-NF-unhinted.zip"
  name "Maple Mono NF"
  homepage "https://github.com/subframe7536/Maple-font"

  livecheck do
    cask "font-maple-mono"
  end

  font "MapleMono-NF-Bold.ttf"
  font "MapleMono-NF-BoldItalic.ttf"
  font "MapleMono-NF-ExtraBold.ttf"
  font "MapleMono-NF-ExtraBoldItalic.ttf"
  font "MapleMono-NF-ExtraLight.ttf"
  font "MapleMono-NF-ExtraLightItalic.ttf"
  font "MapleMono-NF-Italic.ttf"
  font "MapleMono-NF-Light.ttf"
  font "MapleMono-NF-LightItalic.ttf"
  font "MapleMono-NF-Medium.ttf"
  font "MapleMono-NF-MediumItalic.ttf"
  font "MapleMono-NF-Regular.ttf"
  font "MapleMono-NF-SemiBold.ttf"
  font "MapleMono-NF-SemiBoldItalic.ttf"
  font "MapleMono-NF-Thin.ttf"
  font "MapleMono-NF-ThinItalic.ttf"

  # No zap stanza required
end
