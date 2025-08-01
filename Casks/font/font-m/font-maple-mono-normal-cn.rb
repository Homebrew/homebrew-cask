cask "font-maple-mono-normal-cn" do
  version "7.5"
  sha256 "6ee1638126b1d4064dc1db31abbcc2e25297c3fb5b79b9ea213c7f234846f9a8"

  url "https://github.com/subframe7536/Maple-font/releases/download/v#{version}/MapleMonoNormal-CN-unhinted.zip",
      verified: "github.com/subframe7536/Maple-font/"
  name "Maple Mono Normal CN"
  homepage "https://font.subf.dev/en/"

  livecheck do
    cask "font-maple-mono"
  end

  font "MapleMonoNormal-CN-Bold.ttf"
  font "MapleMonoNormal-CN-BoldItalic.ttf"
  font "MapleMonoNormal-CN-ExtraBold.ttf"
  font "MapleMonoNormal-CN-ExtraBoldItalic.ttf"
  font "MapleMonoNormal-CN-ExtraLight.ttf"
  font "MapleMonoNormal-CN-ExtraLightItalic.ttf"
  font "MapleMonoNormal-CN-Italic.ttf"
  font "MapleMonoNormal-CN-Light.ttf"
  font "MapleMonoNormal-CN-LightItalic.ttf"
  font "MapleMonoNormal-CN-Medium.ttf"
  font "MapleMonoNormal-CN-MediumItalic.ttf"
  font "MapleMonoNormal-CN-Regular.ttf"
  font "MapleMonoNormal-CN-SemiBold.ttf"
  font "MapleMonoNormal-CN-SemiBoldItalic.ttf"
  font "MapleMonoNormal-CN-Thin.ttf"
  font "MapleMonoNormal-CN-ThinItalic.ttf"

  # No zap stanza required
end
