cask "font-maple-mono-normal-nf" do
  version "7.9"
  sha256 "6e301f72472856e1b2f2f91d2522a46b41b6ae0c14c98ec82032dbfc1d820bc9"

  url "https://github.com/subframe7536/Maple-font/releases/download/v#{version}/MapleMonoNormal-NF-unhinted.zip",
      verified: "github.com/subframe7536/Maple-font/"
  name "Maple Mono Normal NF"
  homepage "https://font.subf.dev/en/"

  livecheck do
    cask "font-maple-mono"
  end

  font "MapleMonoNormal-NF-Bold.ttf"
  font "MapleMonoNormal-NF-BoldItalic.ttf"
  font "MapleMonoNormal-NF-ExtraBold.ttf"
  font "MapleMonoNormal-NF-ExtraBoldItalic.ttf"
  font "MapleMonoNormal-NF-ExtraLight.ttf"
  font "MapleMonoNormal-NF-ExtraLightItalic.ttf"
  font "MapleMonoNormal-NF-Italic.ttf"
  font "MapleMonoNormal-NF-Light.ttf"
  font "MapleMonoNormal-NF-LightItalic.ttf"
  font "MapleMonoNormal-NF-Medium.ttf"
  font "MapleMonoNormal-NF-MediumItalic.ttf"
  font "MapleMonoNormal-NF-Regular.ttf"
  font "MapleMonoNormal-NF-SemiBold.ttf"
  font "MapleMonoNormal-NF-SemiBoldItalic.ttf"
  font "MapleMonoNormal-NF-Thin.ttf"
  font "MapleMonoNormal-NF-ThinItalic.ttf"

  # No zap stanza required
end
