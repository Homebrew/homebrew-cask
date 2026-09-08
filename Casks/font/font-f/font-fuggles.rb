cask "font-fuggles" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/fuggles/Fuggles-Regular.ttf"
  name "Fuggles"
  homepage "https://fonts.google.com/specimen/Fuggles"

  font "Fuggles-Regular.ttf"

  # No zap stanza required
end
