cask "font-im-fell-dw-pica" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/imfelldwpica"
  name "IM Fell DW Pica"
  homepage "https://fonts.google.com/specimen/IM+Fell+DW+Pica"

  font "IMFePIit28P.ttf"
  font "IMFePIrm28P.ttf"

  # No zap stanza required
end
