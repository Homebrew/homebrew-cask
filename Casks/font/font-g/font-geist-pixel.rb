cask "font-geist-pixel" do
  version "1.7.2"
  sha256 "7fc800d2ac6b92844895196e5041aca55d814c15db70c44f79b3b83ab82b04e2"

  url "https://github.com/vercel/geist-font/releases/download/v#{version}/geist-font-v#{version}.zip",
      verified: "github.com/vercel/geist-font/"
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

  # No zap stanza required
end
