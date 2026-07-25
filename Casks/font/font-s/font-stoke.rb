cask "font-stoke" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/stoke"
  name "Stoke"
  homepage "https://fonts.google.com/specimen/Stoke"

  font "Stoke-Light.ttf"
  font "Stoke-Regular.ttf"

  # No zap stanza required
end
