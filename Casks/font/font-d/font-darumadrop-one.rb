cask "font-darumadrop-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/darumadropone/DarumadropOne-Regular.ttf"
  name "Darumadrop One"
  homepage "https://fonts.google.com/specimen/Darumadrop+One"

  font "DarumadropOne-Regular.ttf"

  zap :not_required
end
