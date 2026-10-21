cask "font-geist-pixel" do
  version "1.8.2"
  sha256 "43ffb66912b1c49e40c371d96e86b3b3dab42db83eb2d0c8a17321210394c4c7"

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

  # No zap stanza required
end
