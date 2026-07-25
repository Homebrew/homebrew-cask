cask "font-playwrite-pt" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritept/PlaywritePT%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite PT"
  homepage "https://fonts.google.com/specimen/Playwrite+PT"

  font "PlaywritePT[wght].ttf"

  # No zap stanza required
end
