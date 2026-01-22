cask "font-playwrite-nz-basic" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritenzbasic/PlaywriteNZBasic%5Bwght%5D.ttf"
  name "Playwrite NZ Basic"
  homepage "https://github.com/TypeTogether/Playwrite"

  font "PlaywriteNZBasic[wght].ttf"

  # No zap stanza required
end
