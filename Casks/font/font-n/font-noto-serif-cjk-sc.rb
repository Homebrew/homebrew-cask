cask "font-noto-serif-cjk-sc" do
  version "2.003"
  sha256 "4bcdbff95cedfb6a4c0640403f0de8b69480d869331c24c8eff91f7bb834df04"

  url "https://github.com/notofonts/noto-cjk/releases/download/Serif#{version}/09_NotoSerifCJKsc.zip"
  name "Noto Serif CJK SC"
  homepage "https://github.com/notofonts/noto-cjk/tree/main/Serif"

  livecheck do
    cask "font-noto-serif-cjk"
  end

  font "OTF/SimplifiedChinese/NotoSerifCJKsc-Black.otf"
  font "OTF/SimplifiedChinese/NotoSerifCJKsc-Bold.otf"
  font "OTF/SimplifiedChinese/NotoSerifCJKsc-ExtraLight.otf"
  font "OTF/SimplifiedChinese/NotoSerifCJKsc-Light.otf"
  font "OTF/SimplifiedChinese/NotoSerifCJKsc-Medium.otf"
  font "OTF/SimplifiedChinese/NotoSerifCJKsc-Regular.otf"
  font "OTF/SimplifiedChinese/NotoSerifCJKsc-SemiBold.otf"

  # No zap stanza required
end
