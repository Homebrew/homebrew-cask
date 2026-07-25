cask "font-foldit" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/foldit/Foldit%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Foldit"
  homepage "https://fonts.google.com/specimen/Foldit"

  font "Foldit[wght].ttf"

  # No zap stanza required
end
