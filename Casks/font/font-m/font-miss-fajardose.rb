cask "font-miss-fajardose" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/missfajardose/MissFajardose-Regular.ttf"
  name "Miss Fajardose"
  homepage "https://fonts.google.com/specimen/Miss+Fajardose"

  font "MissFajardose-Regular.ttf"

  zap :not_required
end
