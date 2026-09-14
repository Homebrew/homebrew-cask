cask "font-explora" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/explora/Explora-Regular.ttf"
  name "Explora"
  homepage "https://fonts.google.com/specimen/Explora"

  font "Explora-Regular.ttf"

  # No zap stanza required
end
