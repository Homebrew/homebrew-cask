cask "font-maple-mono-normal-cn" do
  version "7.7"
  sha256 "25f7b719d889bda77386b1a195789a9124c4bfe4d9cd4e946f618e5ebc54b1b2"

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
