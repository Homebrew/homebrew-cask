cask "font-sail" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sail/Sail-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Sail"
  homepage "https://fonts.google.com/specimen/Sail"

  font "Sail-Regular.ttf"

  # No zap stanza required
end
