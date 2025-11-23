cask "font-science-gothic" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sciencegothic/ScienceGothic%5BCTRS%2Cslnt%2Cwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Science Gothic"
  homepage "https://fonts.google.com/specimen/Science+Gothic"

  font "ScienceGothic[CTRS,slnt,wdth,wght].ttf"

  # No zap stanza required
end
