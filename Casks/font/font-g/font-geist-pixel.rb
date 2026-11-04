cask "font-geist-pixel" do
  version "1.9.1"
  sha256 "f1194047382839bb3ad76a82b43694083cbb56201b2791d420282376fd592506"

  url "https://github.com/vercel/geist-font/releases/download/v#{version}/geist-font-v#{version}.zip"
  name "Geist Pixel"
  homepage "https://vercel.com/font"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "geist-font/GeistPixel/otf/GeistPixel-Circle.otf"
  font "geist-font/GeistPixel/otf/GeistPixel-Grid.otf"
  font "geist-font/GeistPixel/otf/GeistPixel-Line.otf"
  font "geist-font/GeistPixel/otf/GeistPixel-Square.otf"
  font "geist-font/GeistPixel/otf/GeistPixel-Triangle.otf"
  font "geist-font/GeistPixel/variable/GeistPixel[ELSH].ttf"

  zap :not_required
end
