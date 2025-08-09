cask "font-maple-mono-normal-nl-nf" do
  version "7.5"
  sha256 "cd23ca6864d996b0a07cc9eb6817fc206e103209a67f93165c870b26cc5472ad"

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
