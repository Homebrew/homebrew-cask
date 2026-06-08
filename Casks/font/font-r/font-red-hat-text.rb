cask "font-red-hat-text" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/redhattext"
  name "Red Hat Text"
  homepage "https://fonts.google.com/specimen/Red+Hat+Text"

  font "RedHatText-Italic[wght].ttf"
  font "RedHatText[wght].ttf"

  # No zap stanza required
end
