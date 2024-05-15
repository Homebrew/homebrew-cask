cask "font-reem-kufi-fun" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/reemkufifun/ReemKufiFun%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Reem Kufi Fun"
  desc "Also the name of khaled's daughter"
  homepage "https://fonts.google.com/specimen/Reem+Kufi+Fun"

  font "ReemKufiFun[wght].ttf"

  # No zap stanza required
end
