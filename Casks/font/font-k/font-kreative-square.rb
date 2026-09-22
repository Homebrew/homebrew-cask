cask "font-kreative-square" do
  version "2026-09-21"
  sha256 "202cc96a2611f50abee51e0e7a401cd6b74f68d2741e7bf951958120cd067f3c"

  url "https://github.com/kreativekorp/open-relay/releases/download/#{version}/KreativeSquare.zip"
  name "Kreative Square"
  homepage "https://www.kreativekorp.com/software/fonts/ksquare/"

  font "KreativeSquare.ttf"
  font "KreativeSquareSM.ttf"

  # No zap stanza required
end
