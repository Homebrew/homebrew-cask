cask "font-noto-sans-mono-cjk-sc" do
  version "2.004"
  sha256 "e252c39994f8a278676507600a955663c23c24a7827dc63a4300b2f7b427cd5d"

  url "https://github.com/notofonts/noto-cjk/releases/download/Sans#{version}/13_NotoSansMonoCJKsc.zip"
  name "Noto Sans Mono CJK SC"
  homepage "https://github.com/notofonts/noto-cjk/tree/main/Sans"

  livecheck do
    cask "font-noto-sans-cjk"
  end

  font "NotoSansMonoCJKsc-Bold.otf"
  font "NotoSansMonoCJKsc-Regular.otf"

  # No zap stanza required
end
