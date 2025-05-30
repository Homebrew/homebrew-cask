cask "font-maple-mono-normal-nf" do
  version "7.3"
  sha256 "3bd72416604d1e54778aafaeeaeb6abc45947b7a1e62b106210768c97f39bf6f"

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
