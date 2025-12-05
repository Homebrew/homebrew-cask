cask "font-maple-mono-normal-nl-cn" do
  version "7.9"
  sha256 "a543f01a798d6b3f0367b122101b9cefb1690a007e980dee7995e5d08e729d45"

  url "https://github.com/subframe7536/Maple-font/releases/download/v#{version}/MapleMonoNormalNL-CN-unhinted.zip",
      verified: "github.com/subframe7536/Maple-font/"
  name "Maple Mono Normal NL CN"
  homepage "https://font.subf.dev/en/"

  livecheck do
    cask "font-maple-mono"
  end

  font "MapleMonoNormalNL-CN-Bold.ttf"
  font "MapleMonoNormalNL-CN-BoldItalic.ttf"
  font "MapleMonoNormalNL-CN-ExtraBold.ttf"
  font "MapleMonoNormalNL-CN-ExtraBoldItalic.ttf"
  font "MapleMonoNormalNL-CN-ExtraLight.ttf"
  font "MapleMonoNormalNL-CN-ExtraLightItalic.ttf"
  font "MapleMonoNormalNL-CN-Italic.ttf"
  font "MapleMonoNormalNL-CN-Light.ttf"
  font "MapleMonoNormalNL-CN-LightItalic.ttf"
  font "MapleMonoNormalNL-CN-Medium.ttf"
  font "MapleMonoNormalNL-CN-MediumItalic.ttf"
  font "MapleMonoNormalNL-CN-Regular.ttf"
  font "MapleMonoNormalNL-CN-SemiBold.ttf"
  font "MapleMonoNormalNL-CN-SemiBoldItalic.ttf"
  font "MapleMonoNormalNL-CN-Thin.ttf"
  font "MapleMonoNormalNL-CN-ThinItalic.ttf"

  # No zap stanza required
end
