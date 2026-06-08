cask "font-playwrite-sk" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritesk/PlaywriteSK%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite SK"
  homepage "https://fonts.google.com/specimen/Playwrite+SK"

  font "PlaywriteSK[wght].ttf"

  # No zap stanza required
end
