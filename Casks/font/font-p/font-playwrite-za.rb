cask "font-playwrite-za" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteza/PlaywriteZA%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite ZA"
  homepage "https://fonts.google.com/specimen/Playwrite+ZA"

  font "PlaywriteZA[wght].ttf"

  # No zap stanza required
end
