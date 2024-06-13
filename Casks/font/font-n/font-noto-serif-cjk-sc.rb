cask "font-noto-serif-cjk-sc" do
  version "2.002"
  sha256 "eeede72f5b88655a3630f18661155028578afc88aa9e67e55db45a8b5be46789"

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
