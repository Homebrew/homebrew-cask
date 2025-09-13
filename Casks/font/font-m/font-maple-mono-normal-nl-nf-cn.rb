cask "font-maple-mono-normal-nl-nf-cn" do
  version "7.7"
  sha256 "645ca6b2ebd8a9b64d3237e5987f7b2b46714ee78f42dc25fca2e781b507a5c2"

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
