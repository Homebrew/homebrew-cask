cask "font-maple-mono-normal-nl-nf" do
  version "7.9"
  sha256 "df41f7ef14c8aab8c73618f3c8471f7dd94efb2b1b0289423d54e3246dd022eb"

  url "https://github.com/subframe7536/Maple-font/releases/download/v#{version}/MapleMonoNormalNL-NF-unhinted.zip",
      verified: "github.com/subframe7536/Maple-font/"
  name "Maple Mono Normal NL NF"
  homepage "https://font.subf.dev/en/"

  livecheck do
    cask "font-maple-mono"
  end

  font "MapleMonoNormalNL-NF-Bold.ttf"
  font "MapleMonoNormalNL-NF-BoldItalic.ttf"
  font "MapleMonoNormalNL-NF-ExtraBold.ttf"
  font "MapleMonoNormalNL-NF-ExtraBoldItalic.ttf"
  font "MapleMonoNormalNL-NF-ExtraLight.ttf"
  font "MapleMonoNormalNL-NF-ExtraLightItalic.ttf"
  font "MapleMonoNormalNL-NF-Italic.ttf"
  font "MapleMonoNormalNL-NF-Light.ttf"
  font "MapleMonoNormalNL-NF-LightItalic.ttf"
  font "MapleMonoNormalNL-NF-Medium.ttf"
  font "MapleMonoNormalNL-NF-MediumItalic.ttf"
  font "MapleMonoNormalNL-NF-Regular.ttf"
  font "MapleMonoNormalNL-NF-SemiBold.ttf"
  font "MapleMonoNormalNL-NF-SemiBoldItalic.ttf"
  font "MapleMonoNormalNL-NF-Thin.ttf"
  font "MapleMonoNormalNL-NF-ThinItalic.ttf"

  # No zap stanza required
end
