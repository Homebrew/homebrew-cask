cask "font-rubik-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikone/RubikOne-Regular.ttf"
  name "Rubik One"
  homepage "https://fonts.google.com/specimen/Rubik+One"

  font "RubikOne-Regular.ttf"

  zap :not_required
end
