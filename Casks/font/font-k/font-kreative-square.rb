cask "font-kreative-square" do
  version "2026-02-08"
  sha256 "4b6e487c7d6f13a65bb3f4101e3ecb19a73019814ed5874133da6eda128a6a3e"

  url "https://github.com/kreativekorp/open-relay/releases/download/#{version}/KreativeSquare.zip",
      verified: "github.com/kreativekorp/open-relay/"
  name "Kreative Square"
  homepage "https://www.kreativekorp.com/software/fonts/ksquare/"

  font "KreativeSquare.ttf"
  font "KreativeSquareSM.ttf"

  # No zap stanza required
end
