cask "font-golos-text" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/golostext/GolosText%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Golos Text"
  homepage "https://fonts.google.com/specimen/Golos+Text"

  font "GolosText[wght].ttf"

  # No zap stanza required
end
