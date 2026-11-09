cask "font-arizonia" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/arizonia/Arizonia-Regular.ttf"
  name "Arizonia"
  homepage "https://fonts.google.com/specimen/Arizonia"

  font "Arizonia-Regular.ttf"

  zap :not_required
end
