cask "font-puritan" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/puritan"
  name "Puritan"
  homepage "https://fonts.google.com/specimen/Puritan"

  font "Puritan-Bold.ttf"
  font "Puritan-BoldItalic.ttf"
  font "Puritan-Italic.ttf"
  font "Puritan-Regular.ttf"

  # No zap stanza required
end
