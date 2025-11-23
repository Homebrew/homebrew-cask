cask "font-im-fell-great-primer" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/imfellgreatprimer"
  name "IM Fell Great Primer"
  homepage "https://fonts.google.com/specimen/IM+Fell+Great+Primer"

  font "IMFeGPit28P.ttf"
  font "IMFeGPrm28P.ttf"

  # No zap stanza required
end
