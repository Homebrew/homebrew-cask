cask "font-tiny5" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/tiny5/Tiny5-Regular.ttf"
  name "Tiny5"
  homepage "https://github.com/Gissio/font_tiny5"

  font "Tiny5-Regular.ttf"

  # No zap stanza required
end
