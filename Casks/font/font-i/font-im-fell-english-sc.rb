cask "font-im-fell-english-sc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/imfellenglishsc/IMFeENsc28P.ttf",
      verified: "github.com/google/fonts/"
  name "IM Fell English SC"
  homepage "https://fonts.google.com/specimen/IM+Fell+English+SC"

  font "IMFeENsc28P.ttf"

  # No zap stanza required
end
