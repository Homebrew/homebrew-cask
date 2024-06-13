cask "font-noto-serif-cjk-kr" do
  version "2.002"
  sha256 "4df44fb37250f09d7f0382b70e389c400cbb2f4b783ac65c262e8bfa26c64fc1"

  url "https://github.com/notofonts/noto-cjk/releases/download/Serif#{version}/08_NotoSerifCJKkr.zip"
  name "Noto Serif CJK KR"
  homepage "https://github.com/notofonts/noto-cjk/tree/main/Serif"

  livecheck do
    cask "font-noto-serif-cjk"
  end

  font "OTF/Korean/NotoSerifCJKkr-Black.otf"
  font "OTF/Korean/NotoSerifCJKkr-Bold.otf"
  font "OTF/Korean/NotoSerifCJKkr-ExtraLight.otf"
  font "OTF/Korean/NotoSerifCJKkr-Light.otf"
  font "OTF/Korean/NotoSerifCJKkr-Medium.otf"
  font "OTF/Korean/NotoSerifCJKkr-Regular.otf"
  font "OTF/Korean/NotoSerifCJKkr-SemiBold.otf"

  # No zap stanza required
end
