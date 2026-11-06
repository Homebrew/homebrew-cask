cask "font-geist-pixel" do
  version "1.9.2"
  sha256 "15f066d58dcb99fb10014a49913009fdaf41e464cfb8851a44b44e593c95d3d8"

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
