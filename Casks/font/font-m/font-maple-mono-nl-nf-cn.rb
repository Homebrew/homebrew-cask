cask "font-maple-mono-nl-nf-cn" do
  version "7.7"
  sha256 "b78b45379a3f9d83c53725ac1a092021a0aa78bcdcd5d892b6b6c94d3826189a"

  url "https://github.com/subframe7536/Maple-font/releases/download/v#{version}/MapleMonoNL-NF-CN-unhinted.zip",
      verified: "github.com/subframe7536/Maple-font/"
  name "Maple Mono NL NF CN"
  homepage "https://font.subf.dev/en/"

  livecheck do
    cask "font-maple-mono"
  end

  font "MapleMonoNL-NF-CN-Bold.ttf"
  font "MapleMonoNL-NF-CN-BoldItalic.ttf"
  font "MapleMonoNL-NF-CN-ExtraBold.ttf"
  font "MapleMonoNL-NF-CN-ExtraBoldItalic.ttf"
  font "MapleMonoNL-NF-CN-ExtraLight.ttf"
  font "MapleMonoNL-NF-CN-ExtraLightItalic.ttf"
  font "MapleMonoNL-NF-CN-Italic.ttf"
  font "MapleMonoNL-NF-CN-Light.ttf"
  font "MapleMonoNL-NF-CN-LightItalic.ttf"
  font "MapleMonoNL-NF-CN-Medium.ttf"
  font "MapleMonoNL-NF-CN-MediumItalic.ttf"
  font "MapleMonoNL-NF-CN-Regular.ttf"
  font "MapleMonoNL-NF-CN-SemiBold.ttf"
  font "MapleMonoNL-NF-CN-SemiBoldItalic.ttf"
  font "MapleMonoNL-NF-CN-Thin.ttf"
  font "MapleMonoNL-NF-CN-ThinItalic.ttf"

  # No zap stanza required
end
