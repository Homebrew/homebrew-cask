cask "font-noto-serif-cjk" do
  version "2.003"
  sha256 "5009285197f068fe9a58f2cf8d6d312f4bf185887305751aae2608db4e02e48f"

  url "https://github.com/notofonts/noto-cjk/releases/download/Serif#{version}/01_NotoSerifCJK.ttc.zip"
  name "Noto Serif CJK"
  homepage "https://github.com/notofonts/noto-cjk/tree/main/Serif"

  livecheck do
    url :url
    regex(/^Serif[._-]?v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  font "NotoSerifCJK.ttc"

  # No zap stanza required
end
