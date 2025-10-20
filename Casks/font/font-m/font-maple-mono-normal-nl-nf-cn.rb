cask "font-maple-mono-normal-nl-nf-cn" do
  version "7.8"
  sha256 "22481b659a2f10f40c7129ee6d87f55eac31a568014a3e9407a7533ce4af13ac"

  url "https://github.com/subframe7536/Maple-font/releases/download/v#{version}/MapleMonoNormalNL-NF-CN-unhinted.zip",
      verified: "github.com/subframe7536/Maple-font/"
  name "Maple Mono Normal NL NF CN"
  homepage "https://font.subf.dev/en/"

  livecheck do
    cask "font-maple-mono"
  end

  font "MapleMonoNormalNL-NF-CN-Bold.ttf"
  font "MapleMonoNormalNL-NF-CN-BoldItalic.ttf"
  font "MapleMonoNormalNL-NF-CN-ExtraBold.ttf"
  font "MapleMonoNormalNL-NF-CN-ExtraBoldItalic.ttf"
  font "MapleMonoNormalNL-NF-CN-ExtraLight.ttf"
  font "MapleMonoNormalNL-NF-CN-ExtraLightItalic.ttf"
  font "MapleMonoNormalNL-NF-CN-Italic.ttf"
  font "MapleMonoNormalNL-NF-CN-Light.ttf"
  font "MapleMonoNormalNL-NF-CN-LightItalic.ttf"
  font "MapleMonoNormalNL-NF-CN-Medium.ttf"
  font "MapleMonoNormalNL-NF-CN-MediumItalic.ttf"
  font "MapleMonoNormalNL-NF-CN-Regular.ttf"
  font "MapleMonoNormalNL-NF-CN-SemiBold.ttf"
  font "MapleMonoNormalNL-NF-CN-SemiBoldItalic.ttf"
  font "MapleMonoNormalNL-NF-CN-Thin.ttf"
  font "MapleMonoNormalNL-NF-CN-ThinItalic.ttf"

  # No zap stanza required
end
