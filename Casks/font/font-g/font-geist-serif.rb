cask "font-geist-serif" do
  version "1.9.1"
  sha256 "f1194047382839bb3ad76a82b43694083cbb56201b2791d420282376fd592506"

  url "https://github.com/vercel/geist-font/releases/download/v#{version}/geist-font-v#{version}.zip"
  name "Geist Serif"
  homepage "https://vercel.com/font"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "geist-font/GeistSerif/ttf/GeistSerif-Heart.ttf"
  font "geist-font/GeistSerif/ttf/GeistSerif-Regular.ttf"
  font "geist-font/GeistSerif/ttf/GeistSerif-Square.ttf"
  font "geist-font/GeistSerif/ttf/GeistSerif-Triangle.ttf"
  font "geist-font/GeistSerif/variable/GeistSerif[ELSH].ttf"

  zap :not_required
end
