cask "font-hanuman" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/hanuman/Hanuman%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Hanuman"
  homepage "https://fonts.google.com/specimen/Hanuman"

  font "Hanuman[wght].ttf"

  # No zap stanza required
end
