cask "font-prosto-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/prostoone/ProstoOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Prosto One"
  homepage "https://fonts.google.com/specimen/Prosto+One"

  font "ProstoOne-Regular.ttf"

  # No zap stanza required
end
