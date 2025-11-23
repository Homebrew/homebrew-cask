cask "font-petrona" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/petrona"
  name "Petrona"
  homepage "https://fonts.google.com/specimen/Petrona"

  font "Petrona-Italic[wght].ttf"
  font "Petrona[wght].ttf"

  # No zap stanza required
end
