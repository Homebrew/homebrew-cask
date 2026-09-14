cask "font-praise" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/praise/Praise-Regular.ttf"
  name "Praise"
  homepage "https://fonts.google.com/specimen/Praise"

  font "Praise-Regular.ttf"

  # No zap stanza required
end
