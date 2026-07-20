cask "font-dm-serif-text" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/dmseriftext"
  name "DM Serif Text"
  homepage "https://fonts.google.com/specimen/DM+Serif+Text"

  font "DMSerifText-Italic.ttf"
  font "DMSerifText-Regular.ttf"

  # No zap stanza required
end
