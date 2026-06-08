cask "font-ranga" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/ranga"
  name "Ranga"
  homepage "https://fonts.google.com/specimen/Ranga"

  font "Ranga-Bold.ttf"
  font "Ranga-Regular.ttf"

  # No zap stanza required
end
