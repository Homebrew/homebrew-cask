cask "font-noto-serif-cjk-jp" do
  version "2.003"
  sha256 "d7e956584f1e9417a0a72de22bfc33103d7dea78c9f84e5876920eb35ef40a13"

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
