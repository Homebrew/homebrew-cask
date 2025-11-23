cask "font-red-hat-display" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/redhatdisplay"
  name "Red Hat Display"
  homepage "https://fonts.google.com/specimen/Red+Hat+Display"

  font "RedHatDisplay-Italic[wght].ttf"
  font "RedHatDisplay[wght].ttf"

  # No zap stanza required
end
