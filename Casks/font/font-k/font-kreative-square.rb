cask "font-kreative-square" do
  version "2024-06-01"
  sha256 "d824b150dddfcb6215eb07fe890bc72721ff02dd03e8941b10e87deb25177e32"

  url "https://github.com/kreativekorp/open-relay/releases/download/#{version}/KreativeSquare.zip",
      verified: "github.com/kreativekorp/open-relay/"
  name "Kreative Square"
  homepage "https://www.kreativekorp.com/software/fonts/ksquare/"

  font "KreativeSquare.ttf"
  font "KreativeSquareSM.ttf"

  # No zap stanza required
end
