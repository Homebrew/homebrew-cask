cask "font-playwrite-de-la" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritedela/PlaywriteDELA%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite DE LA"
  homepage "https://fonts.google.com/specimen/Playwrite+DE+LA"

  font "PlaywriteDELA[wght].ttf"

  # No zap stanza required
end
