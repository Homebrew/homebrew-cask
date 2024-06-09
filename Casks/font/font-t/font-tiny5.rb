cask "font-tiny5" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/tiny5/Tiny5-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Tiny5"
  homepage "https://fonts.google.com/specimen/Tiny5"

  font "Tiny5-Regular.ttf"

  # No zap stanza required
end
