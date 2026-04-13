cask "font-kreative-square" do
  version "2026-04-12"
  sha256 "e6f393e2ec82073fb297da9b1c601ef6225729fbc109a0121f0e64fb3d773e05"

  url "https://github.com/kreativekorp/open-relay/releases/download/#{version}/KreativeSquare.zip",
      verified: "github.com/kreativekorp/open-relay/"
  name "Kreative Square"
  homepage "https://www.kreativekorp.com/software/fonts/ksquare/"

  font "KreativeSquare.ttf"
  font "KreativeSquareSM.ttf"

  # No zap stanza required
end
