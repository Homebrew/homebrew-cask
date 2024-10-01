cask "font-moderustic" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/moderustic/Moderustic%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Moderustic"
  homepage "https://fonts.google.com/specimen/Moderustic"

  font "Moderustic[wght].ttf"

  # No zap stanza required
end
