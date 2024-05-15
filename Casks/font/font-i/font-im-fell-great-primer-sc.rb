cask "font-im-fell-great-primer-sc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/imfellgreatprimersc/IMFeGPsc28P.ttf",
      verified: "github.com/google/fonts/"
  name "IM Fell Great Primer SC"
  homepage "https://fonts.google.com/specimen/IM+Fell+Great+Primer+SC"

  font "IMFeGPsc28P.ttf"

  # No zap stanza required
end
