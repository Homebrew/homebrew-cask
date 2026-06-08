cask "font-playwrite-be-vlg" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritebevlg/PlaywriteBEVLG%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite BE VLG"
  homepage "https://fonts.google.com/specimen/Playwrite+BE+VLG"

  font "PlaywriteBEVLG[wght].ttf"

  # No zap stanza required
end
