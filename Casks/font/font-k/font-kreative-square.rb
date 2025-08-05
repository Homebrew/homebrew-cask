cask "font-kreative-square" do
  version "2025-03-20"
  sha256 "31fca4cd1f17ddc778377a47bf06a3e221b850b482bf6019251f30e4f8296a33"

  url "https://github.com/kreativekorp/open-relay/releases/download/#{version}/KreativeSquare.zip",
      verified: "github.com/kreativekorp/open-relay/"
  name "Kreative Square"
  homepage "https://www.kreativekorp.com/software/fonts/ksquare/"

  font "KreativeSquare.ttf"
  font "KreativeSquareSM.ttf"

  # No zap stanza required
end
