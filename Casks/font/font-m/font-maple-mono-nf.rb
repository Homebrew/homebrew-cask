cask "font-maple-mono-nf" do
  version "7.0"
  sha256 "e4fe360470e722fe19378ac3b4458509611cf8d7cf774a874f654e5b62619fe4"

  url "https://github.com/subframe7536/Maple-font/releases/download/v#{version}/MapleMono-NF-unhinted.zip",
      verified: "github.com/subframe7536/Maple-font/"
  name "Maple Mono NF"
  homepage "https://font.subf.dev/en/"

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
