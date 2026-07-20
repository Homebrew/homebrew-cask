cask "font-playwrite-de-va" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritedeva/PlaywriteDEVA%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite DE VA"
  homepage "https://fonts.google.com/specimen/Playwrite+DE+VA"

  font "PlaywriteDEVA[wght].ttf"

  # No zap stanza required
end
