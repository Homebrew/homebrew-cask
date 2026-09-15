cask "font-noto-sans-cjk-hk" do
  version "2.004"
  sha256 "f2a8ebfdb737a3dbfbbc501c2ad70a835b1c43c19f785d86bd5024607e069346"

  url "https://github.com/notofonts/noto-cjk/releases/download/Sans#{version}/10_NotoSansCJKhk.zip"
  name "Noto Sans CJK HK"
  homepage "https://github.com/notofonts/noto-cjk/tree/main/Sans"

  livecheck do
    cask "font-noto-sans-cjk"
  end

  font "NotoSansCJKhk-Black.otf"
  font "NotoSansCJKhk-Bold.otf"
  font "NotoSansCJKhk-DemiLight.otf"
  font "NotoSansCJKhk-Light.otf"
  font "NotoSansCJKhk-Medium.otf"
  font "NotoSansCJKhk-Regular.otf"
  font "NotoSansCJKhk-Thin.otf"

  # No zap stanza required
end
