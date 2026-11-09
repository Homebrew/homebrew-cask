cask "font-square-peg" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/squarepeg/SquarePeg-Regular.ttf"
  name "Square Peg"
  homepage "https://fonts.google.com/specimen/Square+Peg"

  font "SquarePeg-Regular.ttf"

  zap :not_required
end
