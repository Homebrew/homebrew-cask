cask "font-datatype" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/datatype/Datatype%5Bwdth%2Cwght%5D.ttf"
  name "Datatype"
  homepage "https://github.com/franktisellano/datatype"

  font "Datatype[wdth,wght].ttf"

  # No zap stanza required
end
