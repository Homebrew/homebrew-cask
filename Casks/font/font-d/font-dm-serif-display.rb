cask "font-dm-serif-display" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/dmserifdisplay"
  name "DM Serif Display"
  homepage "https://fonts.google.com/specimen/DM+Serif+Display"

  font "DMSerifDisplay-Italic.ttf"
  font "DMSerifDisplay-Regular.ttf"

  # No zap stanza required
end
