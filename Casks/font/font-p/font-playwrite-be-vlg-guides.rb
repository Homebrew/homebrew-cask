cask "font-playwrite-be-vlg-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritebevlgguides/PlaywriteBEVLGGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite BE VLG Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+BE+VLG+Guides"

  font "PlaywriteBEVLGGuides-Regular.ttf"

  # No zap stanza required
end
