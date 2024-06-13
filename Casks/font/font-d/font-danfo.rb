cask "font-danfo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/danfo/Danfo%5BELSH%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Danfo"
  homepage "https://fonts.google.com/specimen/Danfo"

  font "Danfo[ELSH].ttf"

  # No zap stanza required
end
