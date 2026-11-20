cask "font-mynerve" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mynerve/Mynerve-Regular.ttf"
  name "Mynerve"
  homepage "https://fonts.google.com/specimen/Mynerve"

  font "Mynerve-Regular.ttf"

  zap :not_required
end
