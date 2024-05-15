cask "font-philosopher" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/philosopher"
  name "Philosopher"
  homepage "https://fonts.google.com/specimen/Philosopher"

  font "Philosopher-Bold.ttf"
  font "Philosopher-BoldItalic.ttf"
  font "Philosopher-Italic.ttf"
  font "Philosopher-Regular.ttf"

  # No zap stanza required
end
