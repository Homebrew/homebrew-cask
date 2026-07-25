cask "font-playwrite-cu" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritecu/PlaywriteCU%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite CU"
  homepage "https://fonts.google.com/specimen/Playwrite+CU"

  font "PlaywriteCU[wght].ttf"

  # No zap stanza required
end
