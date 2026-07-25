cask "font-playwrite-hr" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritehr/PlaywriteHR%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite HR"
  homepage "https://fonts.google.com/specimen/Playwrite+HR"

  font "PlaywriteHR[wght].ttf"

  # No zap stanza required
end
