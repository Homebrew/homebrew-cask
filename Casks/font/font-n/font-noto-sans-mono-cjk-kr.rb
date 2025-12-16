cask "font-noto-sans-mono-cjk-kr" do
  version "2.004"
  sha256 "8c1368d3faac3c43991a91392fb73d985409ffe078cb731c7e303e226e4fd619"

  url "https://github.com/notofonts/noto-cjk/releases/download/Sans#{version}/12_NotoSansMonoCJKkr.zip"
  name "Noto Sans Mono CJK KR"
  homepage "https://github.com/notofonts/noto-cjk/tree/main/Sans"

  livecheck do
    cask "font-noto-sans-cjk"
  end

  font "NotoSansMonoCJKkr-Bold.otf"
  font "NotoSansMonoCJKkr-Regular.otf"

  # No zap stanza required
end
