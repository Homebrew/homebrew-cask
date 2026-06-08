cask "font-mohave" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/mohave"
  name "Mohave"
  homepage "https://fonts.google.com/specimen/Mohave"

  font "Mohave-Italic[wght].ttf"
  font "Mohave[wght].ttf"

  # No zap stanza required
end
