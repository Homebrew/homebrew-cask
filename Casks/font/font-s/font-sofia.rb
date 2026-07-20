cask "font-sofia" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sofia/Sofia-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Sofia"
  homepage "https://fonts.google.com/specimen/Sofia"

  font "Sofia-Regular.ttf"

  # No zap stanza required
end
