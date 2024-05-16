cask "font-reem-kufi" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/reemkufi/ReemKufi%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Reem Kufi"
  homepage "https://fonts.google.com/specimen/Reem+Kufi"

  font "ReemKufi[wght].ttf"

  # No zap stanza required
end
