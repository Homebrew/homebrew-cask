cask "font-playwrite-ar-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritearguides/PlaywriteARGuides-Regular.ttf"
  name "Playwrite AR Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+AR+Guides"

  font "PlaywriteARGuides-Regular.ttf"

  zap :not_required
end
