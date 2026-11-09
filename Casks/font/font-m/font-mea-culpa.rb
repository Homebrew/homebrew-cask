cask "font-mea-culpa" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/meaculpa/MeaCulpa-Regular.ttf"
  name "Mea Culpa"
  homepage "https://fonts.google.com/specimen/Mea+Culpa"

  font "MeaCulpa-Regular.ttf"

  zap :not_required
end
