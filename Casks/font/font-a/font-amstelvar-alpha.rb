cask "font-amstelvar-alpha" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/amstelvaralpha/AmstelvarAlpha-VF.ttf",
      verified: "github.com/google/fonts/"
  name "Amstelvar Alpha"
  homepage "https://fonts.google.com/earlyaccess"

  font "AmstelvarAlpha-VF.ttf"

  # No zap stanza required
end
