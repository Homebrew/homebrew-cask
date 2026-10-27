cask "font-playwrite-hu-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritehuguides/PlaywriteHUGuides-Regular.ttf"
  name "Playwrite HU Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+HU+Guides"

  font "PlaywriteHUGuides-Regular.ttf"

  zap :not_required
end
