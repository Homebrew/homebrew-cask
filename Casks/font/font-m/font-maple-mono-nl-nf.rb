cask "font-maple-mono-nl-nf" do
  version "7.6"
  sha256 "7dc0106bbf490e9c41e80e1b006a58e4af516615539a8567c87c7bda946d1f11"

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
