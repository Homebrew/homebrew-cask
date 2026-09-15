cask "font-chango" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/chango/Chango-Regular.ttf"
  name "Chango"
  homepage "https://fonts.google.com/specimen/Chango"

  font "Chango-Regular.ttf"

  # No zap stanza required
end
