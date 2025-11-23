cask "font-playwrite-fr-moderne" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritefrmoderne/PlaywriteFRModerne%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite FR Moderne"
  homepage "https://fonts.google.com/specimen/Playwrite+FR+Moderne"

  font "PlaywriteFRModerne[wght].ttf"

  # No zap stanza required
end
