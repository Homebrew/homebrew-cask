cask "font-noto-sans-cjk-kr" do
  version "2.004"
  sha256 "e26fcf98e75176d24984875377ab921dbb46055b88ed4a39454d91d6146c5654"

  url "https://github.com/notofonts/noto-cjk/releases/download/Sans#{version}/07_NotoSansCJKkr.zip"
  name "Noto Sans CJK KR"
  homepage "https://github.com/notofonts/noto-cjk/tree/main/Sans"

  livecheck do
    cask "font-noto-sans-cjk"
  end

  font "NotoSansCJKkr-Black.otf"
  font "NotoSansCJKkr-Bold.otf"
  font "NotoSansCJKkr-DemiLight.otf"
  font "NotoSansCJKkr-Light.otf"
  font "NotoSansCJKkr-Medium.otf"
  font "NotoSansCJKkr-Regular.otf"
  font "NotoSansCJKkr-Thin.otf"

  # No zap stanza required
end
