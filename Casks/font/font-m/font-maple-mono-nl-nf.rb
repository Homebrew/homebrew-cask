cask "font-maple-mono-nl-nf" do
  version "7.8"
  sha256 "f17cffe9c77ab42bb19f6e5ba7bad64329a475f1ddac72f78476026288542f7a"

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
