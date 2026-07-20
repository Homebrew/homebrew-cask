cask "font-rambla" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/rambla"
  name "Rambla"
  homepage "https://fonts.google.com/specimen/Rambla"

  font "Rambla-Bold.ttf"
  font "Rambla-BoldItalic.ttf"
  font "Rambla-Italic.ttf"
  font "Rambla-Regular.ttf"

  # No zap stanza required
end
