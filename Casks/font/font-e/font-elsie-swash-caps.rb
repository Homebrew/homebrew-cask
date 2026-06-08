cask "font-elsie-swash-caps" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/elsieswashcaps"
  name "Elsie Swash Caps"
  homepage "https://fonts.google.com/specimen/Elsie+Swash+Caps"

  font "ElsieSwashCaps-Black.ttf"
  font "ElsieSwashCaps-Regular.ttf"

  # No zap stanza required
end
