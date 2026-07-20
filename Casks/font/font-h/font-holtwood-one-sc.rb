cask "font-holtwood-one-sc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/holtwoodonesc/HoltwoodOneSC-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Holtwood One SC"
  homepage "https://fonts.google.com/specimen/Holtwood+One+SC"

  font "HoltwoodOneSC-Regular.ttf"

  # No zap stanza required
end
