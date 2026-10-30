cask "font-geist-pixel" do
  version "1.9.0"
  sha256 "1f2dd9ea90e68d0358a1d234a5f156807b2c3e0e295d78d87980a6dbad1fa58c"

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
