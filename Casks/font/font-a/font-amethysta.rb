cask "font-amethysta" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/amethysta/Amethysta-Regular.ttf"
  name "Amethysta"
  homepage "https://fonts.google.com/specimen/Amethysta"

  font "Amethysta-Regular.ttf"

  # No zap stanza required
end
