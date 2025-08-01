cask "font-maple-mono-nf-cn" do
  version "7.5"
  sha256 "3bd076e9e0a0cd48397fe836abe4c299c34245a0c4ee043c5653159626f3e085"

  url "https://github.com/subframe7536/Maple-font/releases/download/v#{version}/MapleMono-NF-CN-unhinted.zip",
      verified: "github.com/subframe7536/Maple-font/"
  name "Maple Mono NF CN"
  homepage "https://font.subf.dev/en/"

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
