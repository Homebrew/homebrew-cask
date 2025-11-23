cask "font-sofadi-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sofadione/SofadiOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Sofadi One"
  homepage "https://fonts.google.com/specimen/Sofadi+One"

  font "SofadiOne-Regular.ttf"

  # No zap stanza required
end
