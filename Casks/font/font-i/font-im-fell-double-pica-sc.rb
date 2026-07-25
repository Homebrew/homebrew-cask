cask "font-im-fell-double-pica-sc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/imfelldoublepicasc/IMFeDPsc28P.ttf",
      verified: "github.com/google/fonts/"
  name "IM Fell Double Pica SC"
  homepage "https://fonts.google.com/specimen/IM+Fell+Double+Pica+SC"

  font "IMFeDPsc28P.ttf"

  # No zap stanza required
end
