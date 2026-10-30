cask "font-geist-serif" do
  version "1.9.0"
  sha256 "1f2dd9ea90e68d0358a1d234a5f156807b2c3e0e295d78d87980a6dbad1fa58c"

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
