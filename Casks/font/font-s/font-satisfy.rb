cask "font-satisfy" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/satisfy/Satisfy-Regular.ttf"
  name "Satisfy"
  homepage "https://fonts.google.com/specimen/Satisfy"

  font "Satisfy-Regular.ttf"

  zap :not_required
end
