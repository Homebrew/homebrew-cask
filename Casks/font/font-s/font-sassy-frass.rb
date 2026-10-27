cask "font-sassy-frass" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sassyfrass/SassyFrass-Regular.ttf"
  name "Sassy Frass"
  homepage "https://fonts.google.com/specimen/Sassy+Frass"

  font "SassyFrass-Regular.ttf"

  zap :not_required
end
