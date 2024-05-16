cask "font-unna" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/unna"
  name "Unna"
  homepage "https://fonts.google.com/specimen/Unna"

  font "Unna-Bold.ttf"
  font "Unna-BoldItalic.ttf"
  font "Unna-Italic.ttf"
  font "Unna-Regular.ttf"

  # No zap stanza required
end
