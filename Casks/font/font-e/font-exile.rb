cask "font-exile" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/exile/Exile-Regular.ttf"
  name "Exile"
  homepage "https://fonts.google.com/specimen/Exile"

  font "Exile-Regular.ttf"

  zap :not_required
end
