cask "font-maple-mono-nl-nf-cn" do
  version "7.8"
  sha256 "7edbedaff33ea80ca0526b9539a9dfda2ab45cad4cf6a9509cb78726c4f1e0a1"

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
