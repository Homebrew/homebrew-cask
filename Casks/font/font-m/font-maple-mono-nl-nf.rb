cask "font-maple-mono-nl-nf" do
  version "7.5"
  sha256 "08ba3ebbd5d13eba488c425f777884e0ccb7c98bce00a1cadd2176370cf50309"

  url "https://github.com/subframe7536/Maple-font/releases/download/v#{version}/MapleMonoNL-NF-unhinted.zip",
      verified: "github.com/subframe7536/Maple-font/"
  name "Maple Mono NL NF"
  homepage "https://font.subf.dev/en/"

  livecheck do
    cask "font-maple-mono"
  end

  font "MapleMonoNL-NF-Bold.ttf"
  font "MapleMonoNL-NF-BoldItalic.ttf"
  font "MapleMonoNL-NF-ExtraBold.ttf"
  font "MapleMonoNL-NF-ExtraBoldItalic.ttf"
  font "MapleMonoNL-NF-ExtraLight.ttf"
  font "MapleMonoNL-NF-ExtraLightItalic.ttf"
  font "MapleMonoNL-NF-Italic.ttf"
  font "MapleMonoNL-NF-Light.ttf"
  font "MapleMonoNL-NF-LightItalic.ttf"
  font "MapleMonoNL-NF-Medium.ttf"
  font "MapleMonoNL-NF-MediumItalic.ttf"
  font "MapleMonoNL-NF-Regular.ttf"
  font "MapleMonoNL-NF-SemiBold.ttf"
  font "MapleMonoNL-NF-SemiBoldItalic.ttf"
  font "MapleMonoNL-NF-Thin.ttf"
  font "MapleMonoNL-NF-ThinItalic.ttf"

  # No zap stanza required
end
