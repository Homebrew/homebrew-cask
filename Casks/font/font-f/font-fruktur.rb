cask "font-fruktur" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/fruktur"
  name "Fruktur"
  homepage "https://fonts.google.com/specimen/Fruktur"

  font "Fruktur-Italic.ttf"
  font "Fruktur-Regular.ttf"

  # No zap stanza required
end
