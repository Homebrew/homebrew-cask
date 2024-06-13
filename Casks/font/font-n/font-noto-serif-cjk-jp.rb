cask "font-noto-serif-cjk-jp" do
  version "2.002"
  sha256 "166a03cc7725f4d52a0533f4137991089e55d1d417b9d7e15197a9d483b41de3"

  url "https://github.com/notofonts/noto-cjk/releases/download/Serif#{version}/07_NotoSerifCJKjp.zip"
  name "Noto Serif CJK JP"
  homepage "https://github.com/notofonts/noto-cjk/tree/main/Serif"

  livecheck do
    cask "font-noto-serif-cjk"
  end

  font "OTF/Japanese/NotoSerifCJKjp-Black.otf"
  font "OTF/Japanese/NotoSerifCJKjp-Bold.otf"
  font "OTF/Japanese/NotoSerifCJKjp-ExtraLight.otf"
  font "OTF/Japanese/NotoSerifCJKjp-Light.otf"
  font "OTF/Japanese/NotoSerifCJKjp-Medium.otf"
  font "OTF/Japanese/NotoSerifCJKjp-Regular.otf"
  font "OTF/Japanese/NotoSerifCJKjp-SemiBold.otf"

  # No zap stanza required
end
