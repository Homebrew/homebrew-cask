cask "font-noto-serif-cjk-kr" do
  version "2.003"
  sha256 "2132d84616ea55b2b6073bd7b3da5ccd90e59e61fdeab681107d33ab099be367"

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
