cask "font-geist-serif" do
  version "1.9.2"
  sha256 "15f066d58dcb99fb10014a49913009fdaf41e464cfb8851a44b44e593c95d3d8"

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
