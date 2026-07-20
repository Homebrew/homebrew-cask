cask "font-playwrite-nz-basic" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritenzbasic/PlaywriteNZBasic%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite NZ Basic"
  homepage "https://fonts.google.com/specimen/Playwrite+NZ+Basic"

  font "PlaywriteNZBasic[wght].ttf"

  # No zap stanza required
end
