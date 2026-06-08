cask "font-devonshire" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/devonshire/Devonshire-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Devonshire"
  homepage "https://fonts.google.com/specimen/Devonshire"

  font "Devonshire-Regular.ttf"

  # No zap stanza required
end
