cask "font-noto-sans-cjk" do
  version "2.004"
  sha256 "a56077736038875f3a5b1e6715b2713a2bd049cc0bf0dfdf645927b070d38bfc"

  url "https://github.com/notofonts/noto-cjk/releases/download/Sans#{version}/00_NotoSansCJK.ttc.zip"
  name "Noto Sans CJK"
  homepage "https://github.com/notofonts/noto-cjk/tree/main/Sans"

  deprecate! date: "2025-11-22", because: :discontinued
  disable! date: "2026-11-22", because: :discontinued

  font "NotoSansCJK.ttc"

  # No zap stanza required
end
