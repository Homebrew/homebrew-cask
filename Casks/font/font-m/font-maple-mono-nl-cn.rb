cask "font-maple-mono-nl-cn" do
  version "7.6"
  sha256 "aa6b6a502a1a5a9a8621f2063819545365889babd43943f74bf4b25020904921"

  url "https://github.com/subframe7536/Maple-font/releases/download/v#{version}/MapleMonoNL-CN-unhinted.zip",
      verified: "github.com/subframe7536/Maple-font/"
  name "Maple Mono NL CN"
  homepage "https://font.subf.dev/en/"

  livecheck do
    cask "font-maple-mono"
  end

  font "MapleMonoNL-CN-Bold.ttf"
  font "MapleMonoNL-CN-BoldItalic.ttf"
  font "MapleMonoNL-CN-ExtraBold.ttf"
  font "MapleMonoNL-CN-ExtraBoldItalic.ttf"
  font "MapleMonoNL-CN-ExtraLight.ttf"
  font "MapleMonoNL-CN-ExtraLightItalic.ttf"
  font "MapleMonoNL-CN-Italic.ttf"
  font "MapleMonoNL-CN-Light.ttf"
  font "MapleMonoNL-CN-LightItalic.ttf"
  font "MapleMonoNL-CN-Medium.ttf"
  font "MapleMonoNL-CN-MediumItalic.ttf"
  font "MapleMonoNL-CN-Regular.ttf"
  font "MapleMonoNL-CN-SemiBold.ttf"
  font "MapleMonoNL-CN-SemiBoldItalic.ttf"
  font "MapleMonoNL-CN-Thin.ttf"
  font "MapleMonoNL-CN-ThinItalic.ttf"

  # No zap stanza required
end
