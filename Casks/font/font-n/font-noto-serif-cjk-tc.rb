cask "font-noto-serif-cjk-tc" do
  version "2.003"
  sha256 "b4aa07b217532c5859b3674d53588671e7e4f340054fc30e9bf417ee3b1aa4d4"

  url "https://github.com/notofonts/noto-cjk/releases/download/Serif#{version}/10_NotoSerifCJKtc.zip"
  name "Noto Serif CJK TC"
  homepage "https://github.com/notofonts/noto-cjk/tree/main/Serif"

  deprecate! date: "2025-11-22", because: :discontinued, replacement_cask: "font-noto-sans-tc"
  disable! date: "2026-11-22", because: :discontinued, replacement_cask: "font-noto-sans-tc"

  font "OTF/TraditionalChinese/NotoSerifCJKtc-Black.otf"
  font "OTF/TraditionalChinese/NotoSerifCJKtc-Bold.otf"
  font "OTF/TraditionalChinese/NotoSerifCJKtc-ExtraLight.otf"
  font "OTF/TraditionalChinese/NotoSerifCJKtc-Light.otf"
  font "OTF/TraditionalChinese/NotoSerifCJKtc-Medium.otf"
  font "OTF/TraditionalChinese/NotoSerifCJKtc-Regular.otf"
  font "OTF/TraditionalChinese/NotoSerifCJKtc-SemiBold.otf"

  # No zap stanza required
end
