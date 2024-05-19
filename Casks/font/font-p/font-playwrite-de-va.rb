cask "font-playwrite-de-va" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritedeva/PlaywriteDEVA%5Bwght%5D.ttf"
  name "Playwrite DE VA"
  homepage "https://github.com/TypeTogether/Playwrite"

  font "PlaywriteDEVA[wght].ttf"

  # No zap stanza required
end
