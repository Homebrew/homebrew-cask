cask "font-noto-sans-cjk-tc" do
  version "2.004"
  sha256 "8ea0d6feb8e092c250710cdc75c138090832ddaa98d8ccb37cd89b03b72c331b"

  url "https://github.com/notofonts/noto-cjk/releases/download/Sans#{version}/09_NotoSansCJKtc.zip"
  name "Noto Sans CJK TC"
  homepage "https://github.com/notofonts/noto-cjk/tree/main/Sans"

  deprecate! date: "2025-11-22", because: :discontinued, replacement_cask: "font-noto-sans-tc"
  disable! date: "2026-11-22", because: :discontinued, replacement_cask: "font-noto-sans-tc"

  font "NotoSansCJKtc-Black.otf"
  font "NotoSansCJKtc-Bold.otf"
  font "NotoSansCJKtc-DemiLight.otf"
  font "NotoSansCJKtc-Light.otf"
  font "NotoSansCJKtc-Medium.otf"
  font "NotoSansCJKtc-Regular.otf"
  font "NotoSansCJKtc-Thin.otf"

  # No zap stanza required
end
