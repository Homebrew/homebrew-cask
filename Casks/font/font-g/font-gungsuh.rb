cask "font-gungsuh" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gungsuh/Gungsuh-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Gungsuh"
  homepage "https://fonts.google.com/specimen/Gungsuh"

  font "Gungsuh-Regular.ttf"

  # No zap stanza required
end
