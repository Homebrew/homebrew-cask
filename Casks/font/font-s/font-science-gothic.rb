cask "font-science-gothic" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sciencegothic/ScienceGothic%5BCTRS%2Cslnt%2Cwdth%2Cwght%5D.ttf"
  name "Science Gothic"
  homepage "https://github.com/googlefonts/science-gothic"

  font "ScienceGothic[CTRS,slnt,wdth,wght].ttf"

  # No zap stanza required
end
