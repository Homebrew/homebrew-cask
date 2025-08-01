cask "font-maple-mono-normal" do
  version "7.5"
  sha256 "9b7d07b5645a82ae4cea1797a1d2530ab4fdfb82b3fa6914bfa33ac70f31494d"

  url "https://github.com/subframe7536/Maple-font/releases/download/v#{version}/MapleMonoNormal-TTF.zip",
      verified: "github.com/subframe7536/Maple-font/"
  name "Maple Mono Normal"
  homepage "https://font.subf.dev/en/"

  livecheck do
    cask "font-maple-mono"
  end

  font "MapleMonoNormal-Bold.ttf"
  font "MapleMonoNormal-BoldItalic.ttf"
  font "MapleMonoNormal-ExtraBold.ttf"
  font "MapleMonoNormal-ExtraBoldItalic.ttf"
  font "MapleMonoNormal-ExtraLight.ttf"
  font "MapleMonoNormal-ExtraLightItalic.ttf"
  font "MapleMonoNormal-Italic.ttf"
  font "MapleMonoNormal-Light.ttf"
  font "MapleMonoNormal-LightItalic.ttf"
  font "MapleMonoNormal-Medium.ttf"
  font "MapleMonoNormal-MediumItalic.ttf"
  font "MapleMonoNormal-Regular.ttf"
  font "MapleMonoNormal-SemiBold.ttf"
  font "MapleMonoNormal-SemiBoldItalic.ttf"
  font "MapleMonoNormal-Thin.ttf"
  font "MapleMonoNormal-ThinItalic.ttf"

  # No zap stanza required
end
