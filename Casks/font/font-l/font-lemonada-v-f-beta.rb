cask "font-lemonada-v-f-beta" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/lemonadavfbeta/LemonadaVFBeta.ttf",
      verified: "github.com/google/fonts/"
  name "Lemonada V F Beta"
  homepage "https://fonts.google.com/specimen/Lemonada+V+F+Beta"

  font "LemonadaVFBeta.ttf"

  # No zap stanza required
end
