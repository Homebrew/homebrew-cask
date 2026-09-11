cask "font-alice" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/alice/Alice-Regular.ttf"
  name "Alice"
  homepage "https://fonts.google.com/specimen/Alice"

  font "Alice-Regular.ttf"

  # No zap stanza required
end
