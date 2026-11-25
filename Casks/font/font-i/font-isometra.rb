cask "font-isometra" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/isometra/Isometra-Regular.ttf"
  name "Isometra"
  homepage "https://fonts.google.com/specimen/Isometra"

  font "Isometra-Regular.ttf"

  zap :not_required
end
