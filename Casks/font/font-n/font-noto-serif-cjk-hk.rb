cask "font-noto-serif-cjk-hk" do
  version "2.003"
  sha256 "2eaf73871cbc53e72bb1021d760eb64b395955d33fdc560964e15b429a64c288"

  url "https://github.com/notofonts/noto-cjk/releases/download/Serif#{version}/11_NotoSerifCJKhk.zip"
  name "Noto Serif CJK HK"
  homepage "https://github.com/notofonts/noto-cjk/tree/main/Serif"

  livecheck do
    cask "font-noto-serif-cjk"
  end

  font "OTF/TraditionalChineseHK/NotoSerifCJKhk-Bold.otf"
  font "OTF/TraditionalChineseHK/NotoSerifCJKhk-Black.otf"
  font "OTF/TraditionalChineseHK/NotoSerifCJKhk-ExtraLight.otf"
  font "OTF/TraditionalChineseHK/NotoSerifCJKhk-Light.otf"
  font "OTF/TraditionalChineseHK/NotoSerifCJKhk-Medium.otf"
  font "OTF/TraditionalChineseHK/NotoSerifCJKhk-Regular.otf"
  font "OTF/TraditionalChineseHK/NotoSerifCJKhk-SemiBold.otf"

  # No zap stanza required
end
