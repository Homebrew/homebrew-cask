cask "font-playwrite-de-sas" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritedesas/PlaywriteDESAS%5Bwght%5D.ttf"
  name "Playwrite DE SAS"
  homepage "https://github.com/TypeTogether/Playwrite"

  font "PlaywriteDESAS[wght].ttf"

  # No zap stanza required
end
