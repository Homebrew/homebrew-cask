cask "font-loved-by-the-king" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/lovedbytheking/LovedbytheKing.ttf",
      verified: "github.com/google/fonts/"
  name "Loved by the King"
  homepage "https://fonts.google.com/specimen/Loved+by+the+King"

  font "LovedbytheKing.ttf"

  # No zap stanza required
end
