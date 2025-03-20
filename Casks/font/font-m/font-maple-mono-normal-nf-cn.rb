cask "font-maple-mono-normal-nf-cn" do
  version "7.0"
  sha256 "bce945c1bd1af7bc9d24f47b61e109aa79938caf69284d8eeaccc61902474a14"

  url "https://github.com/subframe7536/Maple-font/releases/download/v#{version}/MapleMonoNormal-NF-CN-unhinted.zip"
  name "Maple Mono Normal NF CN"
  homepage "https://github.com/subframe7536/Maple-font"

  livecheck do
    cask "font-maple-mono"
  end

  font "MapleMonoNormal-NF-CN-Bold.ttf"
  font "MapleMonoNormal-NF-CN-BoldItalic.ttf"
  font "MapleMonoNormal-NF-CN-ExtraBold.ttf"
  font "MapleMonoNormal-NF-CN-ExtraBoldItalic.ttf"
  font "MapleMonoNormal-NF-CN-ExtraLight.ttf"
  font "MapleMonoNormal-NF-CN-ExtraLightItalic.ttf"
  font "MapleMonoNormal-NF-CN-Italic.ttf"
  font "MapleMonoNormal-NF-CN-Light.ttf"
  font "MapleMonoNormal-NF-CN-LightItalic.ttf"
  font "MapleMonoNormal-NF-CN-Medium.ttf"
  font "MapleMonoNormal-NF-CN-MediumItalic.ttf"
  font "MapleMonoNormal-NF-CN-Regular.ttf"
  font "MapleMonoNormal-NF-CN-SemiBold.ttf"
  font "MapleMonoNormal-NF-CN-SemiBoldItalic.ttf"
  font "MapleMonoNormal-NF-CN-Thin.ttf"
  font "MapleMonoNormal-NF-CN-ThinItalic.ttf"

  # No zap stanza required
end
