cask "font-noto-sans-cjk-jp" do
  version "2.004"
  sha256 "bf5b26feb83ee02533d4eb4a127bd90ed9d42bdd7ca7cb6e4030b2f21ef55cc5"

  url "https://github.com/notofonts/noto-cjk/releases/download/Sans#{version}/06_NotoSansCJKjp.zip"
  name "Noto Sans CJK JP"
  homepage "https://github.com/notofonts/noto-cjk/tree/main/Sans"

  livecheck do
    cask "font-noto-sans-cjk"
  end

  font "NotoSansCJKjp-Black.otf"
  font "NotoSansCJKjp-Bold.otf"
  font "NotoSansCJKjp-DemiLight.otf"
  font "NotoSansCJKjp-Light.otf"
  font "NotoSansCJKjp-Medium.otf"
  font "NotoSansCJKjp-Regular.otf"
  font "NotoSansCJKjp-Thin.otf"

  # No zap stanza required
end
