cask "font-alex-brush" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/alexbrush/AlexBrush-Regular.ttf"
  name "Alex Brush"
  homepage "https://fonts.google.com/specimen/Alex+Brush"

  font "AlexBrush-Regular.ttf"

  zap :not_required
end
