cask "font-line-seed-jp" do
  version "20260828"
  sha256 "58dee0e2b140c3b3d4769b34059fa7150aee7d3c8326358bd87c0879ef98a5b7"

  url "https://github.com/line/seed/releases/download/v#{version}/seed-v#{version}.zip"
  name "LINE Seed JP"
  homepage "https://seed.line.me/index_jp.html"

  font "seed-v#{version}/LINESeedJP/fonts/ttf/LINESeedJP-Bold.ttf"
  font "seed-v#{version}/LINESeedJP/fonts/ttf/LINESeedJP-ExtraBold.ttf"
  font "seed-v#{version}/LINESeedJP/fonts/ttf/LINESeedJP-Regular.ttf"
  font "seed-v#{version}/LINESeedJP/fonts/ttf/LINESeedJP-Thin.ttf"

  # No zap stanza required
end
