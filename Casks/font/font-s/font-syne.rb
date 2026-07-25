cask "font-syne" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/syne/Syne%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Syne"
  homepage "https://fonts.google.com/specimen/Syne"

  font "Syne[wght].ttf"

  # No zap stanza required
end
