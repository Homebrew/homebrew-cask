cask "font-line-seed-jp" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/lineseedjp"
  name "LINE Seed JP"
  homepage "https://github.com/line/seed"

  font "LINESeedJP-Bold.ttf"
  font "LINESeedJP-ExtraBold.ttf"
  font "LINESeedJP-Regular.ttf"
  font "LINESeedJP-Thin.ttf"

  # No zap stanza required
end
