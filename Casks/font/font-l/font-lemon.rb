cask "font-lemon" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/lemon/Lemon-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Lemon"
  homepage "https://fonts.google.com/specimen/Lemon"

  font "Lemon-Regular.ttf"

  # No zap stanza required
end
