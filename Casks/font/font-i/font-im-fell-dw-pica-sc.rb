cask "font-im-fell-dw-pica-sc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/imfelldwpicasc/IMFePIsc28P.ttf",
      verified: "github.com/google/fonts/"
  name "IM Fell DW Pica SC"
  homepage "https://fonts.google.com/specimen/IM+Fell+DW+Pica+SC"

  font "IMFePIsc28P.ttf"

  # No zap stanza required
end
