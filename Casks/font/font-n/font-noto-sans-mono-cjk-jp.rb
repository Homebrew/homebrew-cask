cask "font-noto-sans-mono-cjk-jp" do
  version "2.004"
  sha256 "6c8faf475ce78fa37486dd5d8920e4bb4450b1b0f3c497edf3ba2d25cf52ab78"

  url "https://github.com/notofonts/noto-cjk/releases/download/Sans#{version}/11_NotoSansMonoCJKjp.zip"
  name "Noto Sans Mono CJK JP"
  homepage "https://github.com/notofonts/noto-cjk/tree/main/Sans"

  deprecate! date: "2025-11-22", because: :discontinued, replacement_cask: "font-noto-sans-jp"
  disable! date: "2026-11-22", because: :discontinued, replacement_cask: "font-noto-sans-jp"

  font "NotoSansMonoCJKjp-Bold.otf"
  font "NotoSansMonoCJKjp-Regular.otf"

  # No zap stanza required
end
