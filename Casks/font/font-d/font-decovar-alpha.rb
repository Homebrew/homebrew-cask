cask "font-decovar-alpha" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/decovaralpha/DecovarAlpha-VF.ttf",
      verified: "github.com/google/fonts/"
  name "Decovar Alpha"
  homepage "https://fonts.google.com/earlyaccess"

  font "DecovarAlpha-VF.ttf"

  # No zap stanza required
end
