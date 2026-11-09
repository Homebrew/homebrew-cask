cask "font-jim-nightshade" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/jimnightshade/JimNightshade-Regular.ttf"
  name "Jim Nightshade"
  homepage "https://fonts.google.com/specimen/Jim+Nightshade"

  font "JimNightshade-Regular.ttf"

  zap :not_required
end
