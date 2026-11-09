cask "font-bangers" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bangers/Bangers-Regular.ttf"
  name "Bangers"
  homepage "https://fonts.google.com/specimen/Bangers"

  font "Bangers-Regular.ttf"

  zap :not_required
end
