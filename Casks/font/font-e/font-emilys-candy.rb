cask "font-emilys-candy" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/emilyscandy/EmilysCandy-Regular.ttf"
  name "Emilys Candy"
  homepage "https://fonts.google.com/specimen/Emilys+Candy"

  font "EmilysCandy-Regular.ttf"

  zap :not_required
end
