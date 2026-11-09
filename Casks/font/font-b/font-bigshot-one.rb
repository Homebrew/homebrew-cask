cask "font-bigshot-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bigshotone/BigshotOne-Regular.ttf"
  name "Bigshot One"
  homepage "https://fonts.google.com/specimen/Bigshot+One"

  font "BigshotOne-Regular.ttf"

  zap :not_required
end
