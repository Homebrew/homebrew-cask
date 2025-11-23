cask "font-playwrite-au-tas-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteautasguides/PlaywriteAUTASGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite AU TAS Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+AU+TAS+Guides"

  font "PlaywriteAUTASGuides-Regular.ttf"

  # No zap stanza required
end
