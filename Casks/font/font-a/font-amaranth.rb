cask "font-amaranth" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/amaranth"
  name "Amaranth"
  homepage "https://fonts.google.com/specimen/Amaranth"

  font "Amaranth-Bold.ttf"
  font "Amaranth-BoldItalic.ttf"
  font "Amaranth-Italic.ttf"
  font "Amaranth-Regular.ttf"

  # No zap stanza required
end
